{
  vim = {
    languages.html = {
      enable = true;
      treesitter = {
        enable = true;
        autotagHtml = true;
      };
      format = {
        enable = true;
        type = ["superhtml"];
      };
      lsp = {
        enable = true;
        servers = [
          "emmet-ls"
          "superhtml"
        ];
      };
    };
    treesitter.autotagHtml = true;
  };
}
