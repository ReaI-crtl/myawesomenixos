{ config, pkgs, home, ...}:

{
  home.packages = [
    pkgs.xdg-desktop-portal-hyprland
  ];
  
  wayland.windowManager.hyprland = {
    enable = true;

    settings = import ./hypr-settings.nix;
  };

  # Auth
  services.hyprpolkitagent.enable = true;

  # Screenshot
  programs.hyprshot = {
    enable = true;
    saveLocation = "$HOME/Pictures/Screenshots";
  };
}
