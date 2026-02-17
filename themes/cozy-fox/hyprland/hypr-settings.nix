{
  "$mod" = "SUPER";
  "$theme-file" = "~/myawesomenixos/themes/cozy-fox";
  
  exec-once = [
    "systemctl --user start hyprpolkitagent"
    # "awww-daemon -n display1"
    # "awww-img -n display1 -t none ~/.config/home-manager/themes/cozy-fox/awww/Fox-Wallpaper.gif"
    "mpvpaper eDP-1 -o \"loop\" $theme-file/mpvpaper/fox-wallpaper.mp4"
    "kitty --hold fastfetch"

    
  ];

  bind = [
    #
    "$mod, E, exec, kitty"
    "$mod, Q, killactive"
    "$mod, V, togglefloating"
   
    "$mod, up, movefocus, u"
    "$mod, down, movefocus, d"
    "$mod, left, movefocus, l"
    "$mod, right, movefocus, r"
    
    # Workspaces
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"
    
  ];

  bindm = [
    "$mod, mouse:272, movewindow"
    "$mod, mouse:273, resizewindow"
  ];

  input = {
    touchpad = {
      natural_scroll = true;
    };
  };

  general = {
    "col.active_border" = "rgba(217,93,57,0.933)";
    "col.inactive_border" = "rgba(217,93,57,0.933)";
  };

  decoration = {
    active_opacity = 0.9;
    inactive_opacity = 0.8;

    fullscreen_opacity = 1;
  };
}
