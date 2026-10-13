{
  imports = [
    ./animations.nix
    ./icons.nix
    ./indent.nix
    ./popups.nix
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
