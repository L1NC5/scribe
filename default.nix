{pkgs, ...}: {
  imports = [
    ./functional
    ./keymap
    ./toolchains
    ./ui
  ];
  vim.extraPackages = with pkgs; [
    fzf
  ];
}
