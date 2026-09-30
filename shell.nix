{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs.buildPackages; [ python3 python3Packages.python-lsp-server uv nodejs_26 tailwindcss_4 sqlite];
}
