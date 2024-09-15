{ pkgs, inputs, systemSettings, ... }: {
  programs.firefox = {
    enable = true;
    languagePacks = [ "ru" "en_US" ];

    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      EnableTrackingProtection = {
        Value= true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      }; 
      # DisableFirefoxScreenshots = true;
      OverrideFirstRunPage = "";
      OverridePostUpdatePage = "";
      DontCheckDefaultBrowser = true;
      DisplayBookmarksToolbar = "always";
      # DisplayMenuBar = "default-off"; # alternatives: "always", "never" or "default-on"
      # SearchBar = "unified"; # alternative: "separate"
    };

    profiles.azathoth = {
      extensions = with inputs.firefox-addons.packages.${systemSettings.system}; [
        vimium-c
        translate-web-pages
        stylus

        # youtube
        sponsorblock
        return-youtube-dislikes
        # youtube-fix
        # tidytube

        # privacy
        ublock-origin
        noscript
        # chameleon
        clearurls
        disconnect
        privacy-badger
        decentraleyes
      ];
    };
  };
}
