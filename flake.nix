{
  description = "A basic flake with a shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.systems.url = "github:nix-systems/default";
  inputs.flake-utils = {
    url = "github:numtide/flake-utils";
    inputs.systems.follows = "systems";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = [
            # https://blog.kotatsu.dev/posts/2024-04-10-nixpkgs-clangd-missing-headers/
            # clang-tools comes first => so wrapped clangd comes first in PATH
            pkgs.clang-tools
            pkgs.clang
            pkgs.ninja
            pkgs.cmake

            # remember build commands
            pkgs.just
          ];
        };
      });
}
