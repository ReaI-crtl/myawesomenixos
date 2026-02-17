{ config, pkgs, home, ...}:

{
  imports = [
    ./hyprland/hypr.nix
    # ./awww/awww.nix
    ./mpvpaper/mpvpaper.nix
    ./quickshell/quickshell.nix
    
    ./kitty/kitty.nix
    ./fish/fish.nix
    ./starship/starship.nix

    ./fastfetch/fastfetch.nix

    ./qutebrowser/qutebrowser.nix
  ];
  
  # fonts.fontconfig.enable = true;

  home.packages = [
    # Packages
    pkgs.monocraft
    pkgs.nerd-fonts.jetbrains-mono
  ];
}
