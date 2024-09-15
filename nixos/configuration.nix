{ inputs, systemSettings, ...}: {

  imports = [
      ./hardware-configuration.nix
      #	"${builtins.fetchTarball "https://github.com/nix-community/disko/archive/master.tar.gz"}/module.nix"
      #	./disko.nix
      ./packages.nix

      ./modules/autostart.nix
      ./modules/bluetooth.nix
      ./modules/bootloader.nix
      ./modules/displayManager.nix
      ./modules/env.nix
      ./modules/hyprland.nix
      ./modules/nixvim/nixvim.nix
      ./modules/network.nix
      ./modules/plymouth.nix
      ./modules/sound.nix
      ./modules/stylix.nix
      ./modules/user.nix
      # ./modules/virtmanager.nix
      ./modules/trim.nix
      ./modules/zram.nix
  ];

  networking.hostName = systemSettings.hostname;

  time.timeZone = systemSettings.timezone;

  i18n.defaultLocale = systemSettings.locale;

  i18n.extraLocaleSettings = {
      LC_ADDRESS = systemSettings.locale2;
      LC_IDENTIFICATION = systemSettings.locale2;
      LC_MEASUREMENT = systemSettings.locale2;
      LC_MONETARY = systemSettings.locale2;
      LC_NAME = systemSettings.locale2;
      LC_NUMERIC = systemSettings.locale2;
      LC_PAPER = systemSettings.locale2;
      LC_TELEPHONE = systemSettings.locale2;
      LC_TIME = systemSettings.locale2;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05"; # Don't change it bro

}
