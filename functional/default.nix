{
  imports = [
    ./autocomplete.nix
    ./clipboard.nix
    ./git.nix
    ./search.nix
    ./tabs.nix
  ];
  vim.mini = {
    ai.enable = true;
    comment.enable = true;
    move.enable = true;
    pairs.enable = true;
  };
}
