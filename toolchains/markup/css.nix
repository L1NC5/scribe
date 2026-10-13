{
  vim.languages.css = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = ["deno"];
    };
    lsp = {
      enable = true;
      servers = ["vscode-css-language-server"];
    };
  };
}
