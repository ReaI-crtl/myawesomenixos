{ config, pkgs, ...}:

{
  programs.fish = {
    enable = true;
    generateCompletions = true;
  };
}
