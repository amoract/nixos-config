{ lib, pkgs, ... }: {
  boot = {
    plymouth = {
      enable = false;
      themePackages = lib.mkForce [ pkgs.adi1090x-plymouth-themes ];
      theme = lib.mkForce "owl";
    };
  };
}
