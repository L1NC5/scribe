{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
in {
  vim = {
    options = {
      tabstop = 2;
      shiftwidth = 2;
      wrap = false;
      expandtab = true;
      list = true;
      listchars = mkLuaInline ''
        { tab = "··" }
      '';
    };
  };
}
