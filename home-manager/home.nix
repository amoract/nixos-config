{
  imports = [
    ./modules/btop.nix
    ./modules/gtk.nix
    ./modules/kitty.nix
    ./modules/qt.nix
    ./modules/stylix.nix
    ./modules/zsh.nix

    ./modules/wms/hyprland.nix
    ./modules/wms/waybar.nix
  ];

  home = {
    username = "azathoth";
    homeDirectory = "/home/azathoth";
    stateVersion = "23.11";
  };
}
