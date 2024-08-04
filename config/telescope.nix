{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      frecency.enable = true;
      media-files.enable = true;
      file-browser.enable = true;
      undo.enable = true;
    };
    keymaps = {
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Telescope Git Files";
        };
      };
      "<leader>ff" = "find_files";
      "<leader>fb" = "buffers";
      "<leader>fg" = "live_grep";
      "<leader>fh" = "help_tags";
      "<F1>" = "commands";
    };
  };
}
