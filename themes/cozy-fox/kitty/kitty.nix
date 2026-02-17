{ config, pkgs, ...}:

{
  programs.kitty = {
    enable = true;
    
    font = {
      name = "Monocraft";
      size = 11;
    };

    settings = {
      shell = "fish";

      confirm_os_window_close = 0;

      background = "#201300";
    };
  };
}
