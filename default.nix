{pkgs, ...}: {
  vim.extraPackages = with pkgs; [
    fzf
  ];
}
