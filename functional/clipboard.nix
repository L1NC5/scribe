{
  vim.clipboard = {
    enable = true;
    registers = "unnamedplus";
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
      xsel.enable = true;
    };
  };
}
