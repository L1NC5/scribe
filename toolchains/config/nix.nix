{
  vim.languages.nix = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = ["alejandra" "injected"];
    };
    lsp = {
      enable = true;
      servers = ["nil"];
    };
    extraDiagnostics = {
      enable = true;
      types = [
        "statix"
        "deadnix"
      ];
    };
  };
}
