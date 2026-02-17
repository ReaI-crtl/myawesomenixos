{
  description = "My Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl.url = "github:nix-community/nixGL";

    # awww.url = "git+https://codeberg.org/LGFae/awww";

    fastfetch.url = "github:ReaI-crtl/fastfetch";
    fastfetch.flake = false;
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      # awww-src = inputs.awww.packages.${system}.awww;

      fastfetch-src = pkgs.fastfetch.overrideAttrs (oldAttrs: {
        src = inputs.fastfetch;
      });
    in {
      # homeConfigurations = {
      #   real = home-manager.lib.homeManagerConfiguration {
      #       inherit pkgs;
      #       extraSpecialArgs = { inherit fastfetch-src; };
      #       modules = [ ./home.nix ];
      #   };
      # };

      nixosConfigurations = {


        laptop = nixpkgs.lib.nixosSystem {
          specialArgs = { 
            inherit fastfetch-src; 
            inherit inputs; 
          };

          # system = "x86_64-linux";

          modules = [
            ./hosts/laptop/configuration.nix
            inputs.home-manager.nixosModules.default
          ];
        };


      };
    };
}