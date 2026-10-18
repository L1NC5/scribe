{pkgs, ...}: {
  vim = {
    fzf-lua = {
      enable = true;
      profile = "default";
    };

    extraPackages = with pkgs; [
      fzf
    ];
  };
}
