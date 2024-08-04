{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    sectionSeparators = { left = ""; right = ""; };
    componentSeparators = { left = ""; right = ""; };
    ignoreFocus = [ "NvimTree" "neo-tree" ];
    sections.lualine_c = [
      "require('auto-session.lib').current_session_name(true)"
    ];
  };
}
