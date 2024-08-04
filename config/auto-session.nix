{
  plugins.auto-session = {
    enable = true;
    autoSave.enabled = true;
    extraOptions.post_restore_cmds = [
      #"Neotree filesystem reveal left"
    ];
    extraOptions.pre_save_cmds = [
      #"NvimTreeClose"
      "function() vim.api.nvim_exec_autocmds('User', {pattern = 'SessionSavePre'}) end"
    ];
  };
}
