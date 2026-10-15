{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
in {
  vim = {
    options = {
      tabstop = 4;
      shiftwidth = 4;
      wrap = false;
      expandtab = true;
      list = true;
      listchars = mkLuaInline ''
        { tab = "··" }
      '';
    };
  };
}
