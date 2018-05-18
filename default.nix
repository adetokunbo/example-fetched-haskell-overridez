let
  overridez = import ./nix/haskell-overridez.nix;
  config = {
    packageOverrides = pkgs: {
        haskellPackages =
          let
            me = self: super: {
              yagai-purojekuto = self.callPackage ./yagai-purojekuto.nix {};
            };
          in
            pkgs.haskellPackages.override {
              overrides = overridez.combineAllIn ./nix [me];
            };
    };
  };
  pkgs = import <nixpkgs> { inherit config; };
in
  { yagai-purojekuto = pkgs.haskellPackages.yagai-purojekuto;
  }
