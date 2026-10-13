{
  vim.languages.markdown = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = [
        "rumdl"
        "injected"
      ];
    };
    lsp = {
      enable = true;
      servers = ["markdown-oxide"];
    };
    extraDiagnostics = {
      enable = true;
      types = [
        "markdownlint-cli2"
      ];
    };
    extensions.markview-nvim = {
      enable = true;
      setupOpts = {
        preview = {
          enable = false;
          enable_hybrid_mode = true;
        };
      };
    };
  };
}
