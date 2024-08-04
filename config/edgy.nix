{
  plugins.edgy = {
    enable = true;
    settings = {
      animate = {
        enabled = true;
      };
      left = [
        {
          ft = "neo-tree";
          #size = 40;
          title = "NeoTree";
          filter = ''
            	    function(buf)
                          return vim.b[buf].neo_tree_source == "filesystem"
                        end
            	  '';
        }
      ];
      wo = {
        winbar = true;
        winfixwidth = true;
        winfixheight = false;
        winhighlight = "WinBar:EdgyWinBar,Normal:EdgyNormal";
        spell = false;
        signcolumn = "no";
      };
    };
  };
}
