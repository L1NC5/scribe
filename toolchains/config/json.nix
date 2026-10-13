{
  vim.languages.json = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = [
        "deno"
      ];
    };
    lsp = {
      enable = true;
      servers = ["vscode-json-language-server"];
    };
  };
}
