{
  vim.languages.tsx = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = [
        "biome"
        "biome-check"
        "biome-organize-imports"
      ];
    };
    lsp = {
      enable = true;
      servers = [
        "typescript-language-server"
        "emmet-ls"
      ];
    };
    extraDiagnostics = {
      enable = true;
      types = [
        "biomejs"
      ];
    };
  };
}
