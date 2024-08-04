{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    cmdline.":".sources = [
      { name = "path"; }
      {
        name = "cmdline";
        option = {
          ignore_cmds = [ "Man" "!" ];
        };
      }
    ];
    settings = {
      completion.completeopt = "menu,menuone,noinsert";
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
      ];
      view = {
        entries = { name = "custom"; selection_order = "near_cursor"; };
        docs.auto_open = true;
      };
      experimental.ghost_text = true;
      window = {
        completion = {
          #winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None";
          #col_offset = -3;
          #side_padding = 0;
        };
        documentation = {
          border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          winhighlight = "Normal:CmpDoc";
        };
      };
      formatting = {
        fields = [ "kind" "abbr" "menu" ];
        #format = ''require("lspkind").cmp_format()'';
        #format = ''function(entry, vim_item)
        #    local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
        #    local strings = vim.split(kind.kind, "%s", { trimempty = true })
        #    kind.kind = " " .. (strings[1] or "") .. " "
        #    kind.menu = "    (" .. (strings[2] or "") .. ")"
        #    return kind
        #  end
        #'';
      };
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
        "<Down>" = "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
      };
    };
  };
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
}
