{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
in {
  vim = {
    statusline.lualine = {
      enable = true;
      setupOpts = {
        sections = {
          lualine_a = ["mode"];
          lualine_b = [
            (
              mkLuaInline ''
                {
                	"filetype",
                	icon_only = true,
                }
              ''
            )
            "filename"
          ];
          # lualine_c = []; Breadcrumbs
          # lualine_x = []; LSP info
          lualine_y = [];
          lualine_z = ["location"];
        };
      };
      integrations.breadcrumbs.vanilla.enable = true;
    };
  };
}
