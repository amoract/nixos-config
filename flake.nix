{
  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      systemSettings = {
        system = "x86_64-linux";
        hostname = "t495";
        timezone = "Europe/Moscow";
        locale = "en_US.UTF-8";
        locale2 = "ru_RU.UTF-8";
      };
      userSettings = {
        username = "azathoth";
        name = "Azathoth";
        dotfilesDir = "~/nix";
        theme = "gruvbox";
      };
    in {
    nixosConfigurations.${systemSettings.hostname} = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit systemSettings;
        inherit userSettings;
        inherit inputs;
        # pkgs-stable = import nixpkgs-stable {
        #   system = systemSettings.system;
        #   config.allowUnfree = true;
        # };
      };
      modules = [
        ./nixos/configuration.nix
        inputs.stylix.nixosModules.stylix
        inputs.nixvim.nixosModules.nixvim
      ];
    };

    homeConfigurations.${userSettings.username} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${systemSettings.system};
      extraSpecialArgs = {
          inherit systemSettings;
          inherit userSettings;
          inherit inputs;
      };
      modules = [ ./home-manager/home.nix ];
    };
  };
}
