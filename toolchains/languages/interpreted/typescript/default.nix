{
  imports = [
    ./angular.nix
    ./tsx.nix
  ];
  vim.languages = {
    typescript = {
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
          # "typescript-go" NOTE: still got some bugs
        ];
      };
      extraDiagnostics = {
        enable = true;
        types = [
          "biomejs"
        ];
      };
    };
  };
}
