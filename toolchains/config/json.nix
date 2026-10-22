{
  lib,
  pkgs,
  ...
}: {
  vim.extraPlugins = {
    schemaStore = {
      package = pkgs.vimPlugins.SchemaStore-nvim;
    };
  };

  vim.languages.json = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = true;
      type = [
        "deno"
      ];
    };
  };

  vim.lsp.servers = {
    jsonls = {
      cmd = lib.mkDefault [(lib.getExe pkgs.vscode-json-languageserver) "--stdio"];
      filetypes = ["json"];
      settings = {
        json = {
          schemas = lib.generators.mkLuaInline "require('schemastore').json.schemas()";
          validate = {enable = true;};
        };
      };
    };
  };
}
