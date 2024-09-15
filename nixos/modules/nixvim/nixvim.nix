{
	imports = [
		./opts.nix
		./keymaps.nix
		./autocmds.nix

		# Plugins
		#./plugins/barbar.nix
		./plugins/cmp.nix
		./plugins/comment.nix
		#./plugins/floaterm.nix
		./plugins/lsp.nix
		./plugins/lualine.nix
		#./plugins/mini.nix
		./plugins/neotree.nix
		./plugins/nix.nix
		./plugins/telescope.nix
		./plugins/transparent.nix
	  ];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		colorschemes.gruvbox.enable = true;
	};
}
