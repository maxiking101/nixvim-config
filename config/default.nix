{
  # Import all your configuration modules here
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./alpha.nix
    ./barbar.nix
    #./bufferline.nix
    ./notify.nix
    ./lualine.nix
    ./dressing.nix
    ./gitsigns.nix
    ./autopairs.nix
    ./colorizer.nix
    #./nvim-tree.nix
    ./neo-tree.nix
    ./neoscroll.nix
    ./scrollbar.nix
    ./telescope.nix
    ./treesitter.nix
    ./colorshemes.nix
    ./auto-session.nix
    #./dropbar.nix
    #./edgy.nix
    ./lspsaga.nix
    ./indent-o-matic.nix
    ./eagle.nix
  ];

  opts = {
    number = true;
    shiftwidth = 2;
    cursorline = true;
    mousemoveevent = true;
  };
  globals.mapleader = " ";
  diagnostics.update_in_insert = true;
}
