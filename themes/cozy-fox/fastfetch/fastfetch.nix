{ config, pkgs, home, fastfetch-src, ...}:

{
  home.packages = [
    pkgs.imagemagick
  ];
  
  programs.fastfetch = {
    enable = true;
    settings = import ./fastfetch-settings.nix;
    # package = pkgs.fastfetch.overrideAttrs(old: {
    #   src = pkgs.fetchFromGitHub {
    #     owner = "ReaI-crtl";
    #     repo = "fastfetch";
    #     rev = "dev";
    #     hash = "sha256-8TWGN40whBNEMILYOjj+kp+2rVJJq6jh2a1Act+2hJs";
    #   };
    # });

    # package = pkgs.fastfetch.overrideAttrs (old: { src = fastfetch-src; });
    package = fastfetch-src;
  };

}
