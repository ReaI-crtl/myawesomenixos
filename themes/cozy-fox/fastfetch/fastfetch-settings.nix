{
  logo = {
    source = "~/myawesomenixos/themes/cozy-fox/fastfetch/Fox-Running.gif";
    type = "kitty-icat";
    padding = {
      right = 1;
    };
  };

  display = {

  };

  modules = [
    "break"
    {
        type = "custom";
        format = "┌──────────────────────Hardware──────────────────────┐";
    }
    {
        type = "host";
        key = " PC";
        keyColor = "green";
    }
    {
        type = "cpu";
        key = "│ ├";
        keyColor = "green";
    }
    {
        type = "gpu";
        key = "│ ├󰍛";
        keyColor = "green";
    }
    {
        type = "memory";
        key = "│ ├󰍛";
        keyColor = "green";
    }
    {
        type = "disk";
        key = "└ └";
        keyColor = "green";
    }
    {
        type = "custom";
        format = "└────────────────────────────────────────────────────┘";
    }
  ];
}
