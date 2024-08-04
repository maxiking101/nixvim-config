{ pkgs, ... }:

{
  extraPlugins = [
    pkgs.vimPlugins.go-nvim
    {
      plugin = pkgs.vimPlugins.nvim-scrollbar;
      config = ''lua require("scrollbar").setup()'';
    }
  ];
}
