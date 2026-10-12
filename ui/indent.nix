{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
in {
  vim.mini.indentscope = {
    enable = true;
    setupOpts = {
      symbol = "│";
      draw = {
        delay = 0;
        animation = mkLuaInline ''
          require('mini.indentscope').gen_animation.none()
        '';
      };
    };
  };
}
