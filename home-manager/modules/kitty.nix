{ pkgs, lib, ... }:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    # font = {
    #   name = "nerd";
    #   size = 14;
    # };
    settings = {
      background_opacity = lib.mkForce "0.85";
      modify_font = "cell_width 90%";
      shell_integration = "enabled";
    };
  };
}
