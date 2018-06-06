let
  overridez = import ./nix/haskell-overridez.nix;
  overlays = [
    (newPkgs: oldPkgs: {
        haskellPackages =
          let
            me = self: super: {
              yagai-purojekuto = self.callPackage ./yagai-purojekuto.nix {};
            };
          in
            oldPkgs.haskellPackages.override {
              overrides = overridez.combineAllIn ./nix [me];
            };
    })
  ];
  pkgs = import <nixpkgs> { inherit overlays; };
in
  { yagai-purojekuto = pkgs.haskellPackages.yagai-purojekuto;
  }
