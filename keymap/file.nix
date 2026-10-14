_: let
  mkBinding = key: "<leader>f${key}";
in {
  vim = {
    binds.whichKey.register."<leader>f" = "File";
    keymaps = [
      {
        key = mkBinding "t";
        mode = ["n"];
        desc = "Toggle File Buffer";
        action = ":Oil<CR>";
      }
      {
        key = mkBinding "o";
        mode = ["n"];
        desc = "Show Open Files";
        action = ":FzfLua buffers<CR>";
      }
      {
        key = mkBinding "f";
        mode = ["n"];
        desc = "Find File";
        action = ":Telescope find_files<CR>";
      }
      {
        key = mkBinding "z";
        mode = ["n"];
        desc = "Fuzzy in Files";
        action = ":Telescope live_grep<CR>";
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
