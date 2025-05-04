{
  stdenvNoCC,
  fetchFromGitHub,
  pkgs,
  ...
}:
stdenvNoCC.mkDerivation rec {
  pname = "bkmr";
  version = "1..0";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "sysid";
    repo = "bkmr";
    rev = "5cf17c5d3f4cd9099e2af9fa49342dca757ff208";
    sha256 = "sha256-FHrwPiL8XVwfNJIRH3p2BqlSwMHQv8hJaz1l4MzUY+w=";
  };

  buildInputs = [pkgs.openssl pkgs.pkg-config pkgs.rustc pkgs.cargo ];

  installPhase = ''
    # cargo install --path ./bkmr --root $out
    make build
  '';
}
