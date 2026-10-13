{
  vim.languages.xml = {
    enable = true;
    treesitter.enable = true;
    lsp = {
      enable = true;
      servers = ["lemminx"];
    };
  };
}
