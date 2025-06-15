{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      devShells.x86_64-linux.default = let
      in pkgs.mkShell {
        name = "hugo-shell";
        buildInputs = with pkgs; [ hugo nodejs ];

        shellHook = "";
      };
    };
}
