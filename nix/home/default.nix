{
  system ? builtins.currentSystem,
}:

let
  inputs = import ../tamal { inherit system; };
  pkgs = import inputs.nixpkgs {
    inherit system;
    config = { };
    overlays = [
      (import ../pkgs/overlay.nix)
    ];
  };
in
pkgs.buildEnv {
  name = "home";
  paths = with pkgs; [
    fd
    ripgrep

    sdev
  ];

  # tools for bin/home
  passthru.tools = pkgs.buildEnv {
    name = "home-tools";
    paths = with pkgs; [
      nixfmt
      nixtamal
    ];
  };
}
