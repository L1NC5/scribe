_: let
  mkBinding = key: "<leader>f${key}";
in {
  vim = {
    binds.whichKey.register."<leader>f" = "File";
    keymaps = [
      {
        key = mkBinding "t";
        mode = ["n"];
        desc = "Toggle File Tree";
        action = ":lua MiniFiles.open()<CR>";
      }
      {
        key = mkBinding "o";
        mode = ["n"];
        desc = "Show Open Files";
        action = ":FzfLua buffers<CR>";
      }
      {
        key = mkBinding "r";
        mode = ["n"];
        desc = "Show Recent Files";
        action = ":FzfLua oldfiles<CR>";
      }
      {
        key = mkBinding "f";
        mode = ["n"];
        desc = "Find File";
        action = ":FzfLua files<CR>";
      }
      {
        key = mkBinding "g";
        mode = ["n"];
        desc = "Fuzzy in Files";
        action = ":FzfLua live_grep<CR>";
      }
      {
        key = mkBinding "s";
        mode = ["n"];
        desc = "Show Code Symbols";
        action = ":lua require('fzf-lua').lsp_live_workspace_symbols()<CR>";
      }
    ];
  };
}
