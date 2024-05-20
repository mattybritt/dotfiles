{ lib, qtbase, qtsvg
, qtgraphicaleffects
, qtquickcontrols2
, wrapQtAppsHook
, stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation rec {
  pname = "tokyo-night-sddm";
  version = "1..0";
  dontBuild = true;
  src = fetchFromGitHub {
    owner = "mattybritt";
    repo = "tokyo-night-sddm";
    rev = "38167bc";
    sha256 = "sha256-KoNR3IbLASLECsWlnc3X3LuOuN+VbCPcEpC3DijpmKs=";
  };
  nativeBuildInputs = [
    wrapQtAppsHook
  ];

  propagatedUserEnvPkgs = [
    qtbase
    qtsvg
    qtgraphicaleffects
    qtquickcontrols2
  ];

  installPhase = ''
    mkdir -p $out/share/sddm/themes
    cp -aR $src $out/share/sddm/themes/tokyo-night-sddm
  '';
}
