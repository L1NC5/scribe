{
  vim.languages.angular = {
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
      servers = [
        "angular-language-server"
        "emmet-ls"
      ];
    };
  };
}
