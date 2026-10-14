{pkgs, ...}: {
  vim.extraPlugins = {
    vague-nvim = {
      package = pkgs.vimPlugins.vague-nvim;
      setup = ''
        require("vague").setup({})
        vim.cmd('colorscheme vague')
      '';
    };
  };
}
