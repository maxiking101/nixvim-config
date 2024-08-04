{ pkgs, ... }:

{
  plugins.lsp = {
    enable = true;
    # inlayHints = true;

    servers = {
      ruff-lsp.enable = true;
      pyright.enable = true;
      gopls.enable = true;
      gopls.settings = {
        completeUnimported = true;
        usePlaceholders = true;
        analyses.unusedparams = true;
      };
      helm-ls.enable = true;
      nil-ls = {
        enable = true;
        settings.formatting.command = [ "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt" ];
        settings.nix = {
          maxMemoryMB = 4096;
          flake.autoEvalInputs = true;
        };
      };
      dockerls.enable = true;
      docker-compose-language-service.enable = true;
      bashls.enable = true;
    };
  };
  plugins.lsp-status.enable = true;
  plugins.lspkind = {
    enable = true;
    cmp.enable = true;
    #cmp.after = ''function(entry, vim_item, kind)
    #    local strings = vim.split(kind.kind, "%s", { trimempty = true })
    #    kind.kind = " " .. (strings[1] or "") .. " "
    #    kind.menu = "    " .. (strings[2] or "") .. ""
    #    return kind
    #  end
    #'';
  };
  plugins.lsp-format.enable = true;
  plugins.luasnip.enable = true;
}
