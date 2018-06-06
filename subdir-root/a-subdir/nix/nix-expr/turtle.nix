{ mkDerivation, ansi-wl-pprint, async, base, bytestring, clock
, containers, criterion, directory, doctest, exceptions, fetchgit
, foldl, hostname, managed, optional-args, optparse-applicative
, process, semigroups, stdenv, stm, system-fileio, system-filepath
, temporary, text, time, transformers, unix, unix-compat
}:
mkDerivation {
  pname = "turtle";
  version = "1.5.8";
  src = fetchgit {
    url = "https://github.com/Gabriel439/Haskell-Turtle-Library";
    sha256 = "0y7m94ll5ljjifshczb344vkbw9jkz020qmkpnqbwmjlcncm47rw";
    rev = "60b5bc7bf49058068c4da64201a83b01d92c7f35";
  };
  libraryHaskellDepends = [
    ansi-wl-pprint async base bytestring clock containers directory
    exceptions foldl hostname managed optional-args
    optparse-applicative process semigroups stm system-fileio
    system-filepath temporary text time transformers unix unix-compat
  ];
  testHaskellDepends = [ base doctest system-filepath temporary ];
  benchmarkHaskellDepends = [ base criterion text ];
  description = "Shell programming, Haskell-style";
  license = stdenv.lib.licenses.bsd3;
}
