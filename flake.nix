{
  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";
    nvf = {
      url = "github:notashelf/nvf/main";
    };
  };
  outputs = {
    nixpkgs,
    nvf,
    ...
  }: let
    mkForSystems = f:
      builtins.listToAttrs (
        map (system: {
          name = system;
          value = f {
            pkgs = import nixpkgs {
              inherit system;
            };
            inherit (nixpkgs) lib;
            inherit system;
          };
        })
        [
          "x86_64-linux"
          "aarch64-linux"
          "aarch64-darwin"
        ]
      );
  in {
    packages = mkForSystems ({pkgs, ...}: {
      default =
        (nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./default.nix];
        }).neovim;
    });
    formatter = mkForSystems ({pkgs, ...}:
      pkgs.writeShellApplication {
        name = "nix-fmt-wrapper";
        runtimeInputs = with pkgs; [
          editorconfig-checker
          alejandra
        ];
        text = ''
          echo '[INFO] formatting nix files'
          alejandra .
          echo '[INFO] validating'
          editorconfig-checker
          echo '[INFO] done'
        '';
      });
  };
}
