{
  vim.languages.php = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = [
        "mago"
        "mago-fix"
      ];
    };
    lsp = {
      enable = true;
      servers = [
        "phpantom"
      ];
    };
    extraDiagnostics = {
      enable = true;
      types = [
        "phpstan"
        "mago_analyze"
      ];
    };
    dap = {
      enable = true;
      debugger = ["xdebug"];
    };
  };
}
