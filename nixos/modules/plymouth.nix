{ lib, pkgs, ... }: {
  boot = {
    plymouth = {
      enable = true;
      theme = lib.mkForce "lone";
      themePackages = with pkgs; [
        lib.mkForce adi1090x-plymouth-themes
        # (adi1090x-plymouth-themes.override {
        #   selected_themes = [ "lone" ];
        # })
      ];
    };
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
    ];
    loader.timeout = 1;
  };
}
