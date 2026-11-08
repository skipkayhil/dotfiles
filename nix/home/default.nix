let
  inputs = import ../tamal { };
  pkgs = import inputs.nixpkgs {
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
