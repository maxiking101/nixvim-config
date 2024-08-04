{
  plugins.nvim-tree = {
    enable = true;
    filters = { dotfiles = true; };
    disableNetrw = true;
    hijackCursor = true;
    syncRootWithCwd = true;
    updateFocusedFile = {
      enable = true;
      updateRoot = false;
    };
    view = {
      width = 30;
      preserveWindowProportions = false;
    };
    renderer = {
      rootFolderLabel = false;
      highlightGit = true;
      indentMarkers.enable = true;
      icons.glyphs = {
        default = "󰈚";
        folder = {
          default = "";
          empty = "";
          emptyOpen = "";
          open = "";
          symlink = "";
        };
        git.unmerged = "";
      };
    };
  };
}
