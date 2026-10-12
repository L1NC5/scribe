{pkgs, ...}: {
  imports = [
    ./functional
    ./keymap
    ./ui
  ];
  vim.extraPackages = with pkgs; [
    fzf
  ];
}
