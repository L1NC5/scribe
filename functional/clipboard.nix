{
  vim.clipboard = {
    enable = true;
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
      xsel.enable = true;
    };
  };
}
