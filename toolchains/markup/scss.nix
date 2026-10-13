{
  vim.languages.scss = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = ["deno"];
    };
    lsp = {
      enable = true;
      servers = ["some-sass-language-server"];
    };
    extraDiagnostics = {
      enable = true;
      types = ["stylelint"];
    };
  };
}
