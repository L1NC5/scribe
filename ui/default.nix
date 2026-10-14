{
  imports = [
    ./animations.nix
    ./icons.nix
    ./indent.nix
    ./keylist.nix
    ./notifications.nix
    ./popups.nix
    ./statusline.nix
    ./theme.nix
  ];

  vim = {
    lineNumberMode = "relNumber";
    diagnostics = {
      enable = true;
      config.virtual_text = true;
    };
  };
}
