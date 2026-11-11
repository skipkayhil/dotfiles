{ system ? builtins.currentSystem }:

let
  inputs = import ../tamal { inherit system; };
  pkgs = import inputs.nixpkgs {
    inherit system;
    config = { };
    overlays = [
      #   (import "${inputs.nixtamal}/nix/overlay")
      (import ../pkgs/overlay.nix)
    ];
  };
in
pkgs.buildEnv {
  name = "home";
  paths = with pkgs; [
    nixtamal

    fd
    ripgrep

    sdev
  ];
}
