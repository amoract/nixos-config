{ pkgs, lib, ... }: {
  gtk = {
    enable = true;
    iconTheme = {
      package = lib.mkForce pkgs.tela-icon-theme;
      name = lib.mkForce "Tela-blue";
    };
    theme = {
      package = lib.mkForce pkgs.orchis-theme;
      name = lib.mkForce "Orchis-Green-Dark";
    };
  };
}
