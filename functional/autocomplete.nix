{lib, ...}: {
  vim.autocomplete.blink-cmp = {
    enable = true;
    setupOpts = {
      completion = {
        keyword.range = "prefix";
        list.selection = {
          preselect = false;
          auto_insert = false;
        };
      };
      signature = {
        enabled = true;
        trigger = {
          enabled = true;
          show_on_trigger_character = true;
          show_on_insert = true;
        };
        window.show_documentation = true;
      };
      sources.default = lib.mkForce ["lsp" "path" "emoji"];
    };
    sourcePlugins.emoji.enable = true;
  };
}
