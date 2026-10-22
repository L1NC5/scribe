let
  mkBinding = key: "<leader>c${key}";
in {
  vim = {
    binds.whichKey.register."<leader>c" = "Code";
    mini = {
      comment.setupOpts.mappings = {
        comment = mkBinding "c";
        comment_visual = mkBinding "c";
        textobject = mkBinding "c";
      };
      surround.setupOpts.mappings = {
        add = mkBinding "sa";
        delete = mkBinding "sd";
        replace = mkBinding "sr";
      };
    };

    autocomplete.blink-cmp.mappings = {
      close = "<ESC>";
      complete = "<C-space>";
      confirm = "<CR>";
      next = "<C-n>";
      previous = "<C-p>";
    };
    keymaps = [
      {
        key = mkBinding "f";
        mode = ["n"];
        desc = "Format Code";
        action = ":lua require('conform').format()<CR>";
      }
      {
        key = mkBinding "d";
        mode = ["n"];
        desc = "Show Code Definition";
        action = ":lua vim.lsp.buf.hover()<CR>";
      }
      {
        key = mkBinding "g";
        mode = ["n"];
        desc = "Code go to Definition";
        action = ":lua vim.lsp.buf.definition()<CR>";
      }
      {
        key = mkBinding "r";
        mode = ["n"];
        desc = "Go to References";
        action = ":lua vim.lsp.buf.references()<CR>";
      }
      {
        key = mkBinding "a";
        mode = ["n"];
        desc = "Do Code Actions";
        action = ":lua vim.lsp.buf.code_action()<CR>";
      }
      {
        key = mkBinding "e";
        mode = ["n"];
        desc = "Show Code Errors";
        action = ":lua vim.diagnostic.open_float()<CR>";
      }
      {
        key = mkBinding "t";
        mode = ["n"];
        desc = "Show Code Spelling Errors";
        action = ":Telescope spell_suggest<CR>";
      }
      {
        key = mkBinding "i";
        mode = ["n"];
        desc = "Show Implementations";
        action = ":lua vim.lsp.buf.implementation()<CR>";
      }
      {
        key = mkBinding "n";
        mode = ["n"];
        desc = "Rename Variable";
        action = ":lua vim.lsp.buf.rename()<CR>";
      }
    ];
  };
}
