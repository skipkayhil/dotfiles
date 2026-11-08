final: prev:
let
  craneSrc = final.fetchFromGitHub {
    owner = "ipetkov";
    repo = "crane";
    rev = "v0.24.0";
    hash = "sha256-lWhBbBvC05/xwivKBBiM2YNizpmgqCgyOIzomvRuwxs=";
  };

  crane = import craneSrc { pkgs = final; };
in
{
  sdev = final.callPackage ./sdev/package.nix { inherit crane; };
}
