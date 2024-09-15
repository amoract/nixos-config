{ pkgs, ... }: {

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    discord
    firefox
    kitty
    mpv
    telegram-desktop
    xfce.thunar

    # CLI utils
    bluez
    bluez-tools
    brightnessctl
    btop
    cava
    git
    fastfetch
    ffmpeg
    light
    unzip
    wget
    zip
    zram-generator

    # GUI utils
    #dmenu
    imv

    # Wayland stuff
    cliphist
    mako
    wl-clipboard
    wofi
    xwayland

    # WMs and stuff
    hyprland
    polybar
    seatd
    swww
    waybar
    xdg-desktop-portal-hyprland

    # Sound
    pamixer
    pipewire
    pulseaudio

    # GPU stuff 
    # amdvlk
    # glaxnimate
    # rocm-opencl-icd

    # Screenshotting
    grim
    grimblast
    slurp
    swappy

    # Other
    home-manager
    ly
    # spice-vdagent
    # libsForQt5.qtstyleplugin-kvantum
    # libsForQt5.qt5ct
    spoofdpi
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
