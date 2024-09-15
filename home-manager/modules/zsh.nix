{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix";
      in {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        upd = "sudo nix flake update ${flakeDir}";
        hms = "home-manager switch --flake ${flakeDir}";

        ll = "ls -l";
        se = "sudoedit";
        ff = "fastfetch";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      #theme = "agnoster"; # blinks is also really nice
    };
    initExtra = ''
        #PROMPT
        autoload -U colors && colors
        PROMPTBASE="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
        updateps1() {
          PS1="$PROMPTBASE"
          [ ! -z ''${extra_dev_shell} ] || [ ! -z ''${extra_packages} ] && \
          PS1="%B$fg[red][$fg[green]$(checkExtraDev)$fg[blue]$extra_packages$fg[red]]$fg[blue]  $PROMPTBASE"
        }
        updateps1
    '';
  };
}
