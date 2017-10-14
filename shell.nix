with import <nixpkgs> {};
pkgs.stdenv.mkDerivation {
  name = "report-env";
  buildInputs = with pkgs; [
    texlive.combined.scheme-full
    haskellPackages.pandoc-crossref
    pandoc
    gnumake
    inotify-tools
  ];
}
