{
  plugins.neo-tree = {
    enable = true;
    #addBlankLineAtTop = true;
    autoCleanAfterSessionRestore = false;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    #openOnSetup = true;
    defaultComponentConfigs.indent.withExpanders = true;
    sourceSelector.winbar = true;
    #filesystem.hijackNetrwBehavior = "open_current";
  };
}
