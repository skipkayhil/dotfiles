{ crane, fetchFromGitHub }:

let
  rev = "cad58166770fb60e22bfaa1bef55a79f052ddd59";

  sdevSource = fetchFromGitHub {
    owner = "skipkayhil";
    repo = "sdev";
    rev = rev;
    hash = "sha256-25flhVg30EAv2BYx9ltXpGwoIa4yLwXq3YtOWIkrc1c=";
  };

  commonArgs = {
    src = crane.cleanCargoSource sdevSource;
    strictDeps = true;
  };
in
crane.buildPackage (
  commonArgs
  // {
    cargoArtifacts = crane.buildDepsOnly commonArgs;

    SDEV_VCS_REVISION = rev;
  }
)
