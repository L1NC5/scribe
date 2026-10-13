{
  vim.languages.http = {
    enable = true;
    treesitter.enable = true;
    format = {
      enable = false; # TODO: github page is gone
      type = ["kulala-fmt"];
    };
    extensions.kulala-nvim = {
      enable = false; # TODO: github page is gone
      setupOpts.lsp.enable = true;
      mappings = {
        openScratchpad = "<leader>Rb";
        replayRequest = "<leader>Rr";
        sendRequest = "<leader>Rs";
        sendAllRequests = "<leader>Ra";
      };
    };
  };
}
