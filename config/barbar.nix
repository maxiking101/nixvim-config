{
  plugins.barbar = {
    enable = true;
    settings = {
      sidebar_filetypes = {
        neo-tree = { event = "BufWipeout"; text = "NeoTree"; align = "center"; };
      };
      icons.diagnostics = {
        "vim.diagnostic.severity.ERROR".enabled = true;
        #"vim.diagnostic.severity.HINT".enabled = true;
        #"vim.diagnostic.severity.INFO".enabled = true;
        "vim.diagnostic.severity.WARN".enabled = true;
      };
    };
  };
}
