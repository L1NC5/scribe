{pkgs, ...}: {
  vim.extraPlugins = {
    vague-nvim = {
      package = pkgs.vimPlugins.vague-nvim;
      setup = ''
        require("vague").setup({})
        vim.cmd('colorscheme vague')

        vim.api.nvim_set_hl(0, "BlinkIndent", { fg = "#252530" })       -- colors.line

        vim.api.nvim_set_hl(0, "BlinkIndentScope1", { fg = "#6e94b2" }) -- keyword
        vim.api.nvim_set_hl(0, "BlinkIndentScope2", { fg = "#c48282" }) -- func
        vim.api.nvim_set_hl(0, "BlinkIndentScope3", { fg = "#b4d4cf" }) -- builtin
        vim.api.nvim_set_hl(0, "BlinkIndentScope4", { fg = "#bb9dbd" }) -- parameter
      '';
    };
  };
}
