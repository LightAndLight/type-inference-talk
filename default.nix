{ stdenv, texlive }:
stdenv.mkDerivation {
  name = "unification-talk";
  src = ./.;
  buildInputs = [
    (texlive.combine {
      inherit (texlive) scheme-full beamer prftree pgf;
    })
  ];
  buildPhase = ''pdflatex *.tex'';
  installPhase = ''mkdir $out; cp *.pdf $out'';
}
