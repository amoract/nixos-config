{ userSettings, ... }: {
  imports = [
    ./modules/btop.nix
    ./modules/firefox.nix
    ./modules/gtk.nix
    ./modules/kitty.nix
    ./modules/qt.nix
    ./modules/stylix.nix
    ./modules/zsh.nix

    ./modules/wms/hyprland.nix
    ./modules/wms/waybar.nix
  ];

  home = {
    username = userSettings.username;
    homeDirectory = "/home/${userSettings.username}";
    stateVersion = "24.05";
  };
}
