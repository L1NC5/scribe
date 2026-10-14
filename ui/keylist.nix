{
  vim = {
    binds.whichKey = {
      enable = true;
      register = {
        # see /keymap for full list.

        # delete unused groups
        # "<leader>h" = null;
        # "<leader>fl" = null; # telescope LSP
        # "<leader>fv" = null; # telescope git
        # "<leader>fvc" = null; # telescope git commits
        /*
        TODO: Find out how to set custom icons
        { '<leader>dc', icon = { icon = '', color = 'green' } },
        { '<leader>db', icon = { icon = '󰧞', color = 'red' } },
        { '<leader>di', icon = { icon = '󰆹', color = 'azure' } },
        { '<leader>do', icon = { icon = '󰆸', color = 'azure' } },
        { '<leader>ds', icon = { icon = '', color = 'green' } },
        { '<leader>dt', icon = { icon = '', color = 'yellow' } },
        { '<leader>dx', icon = { icon = '󰅖', color = 'red' } },
        */
      };
    };
    options = {
      timeout = true;
      timeoutlen = 300;
    };
  };
}
