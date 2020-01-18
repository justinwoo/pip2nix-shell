{ pkgs ? import ./pinned.nix {} }:

let
  pypi2nix = import (
    pkgs.fetchgit {
      url = "https://github.com/nix-community/pypi2nix";
      rev = "v2.0.3";
      sha256 = "1d0rkh4757wy6v3nnjnd3pyjnwh6v7qpmjin50x5zqrn09jc4ibm";
    }
  ) { inherit pkgs; };
in
pkgs.mkShell {
  buildInputs = [
    pypi2nix
  ];
}
