{
  description = "Splinter: My NixOs flake";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    # Am I doing this right
    nixosConfigurations.mobl_calc = nixpkgs.lib.nixosSystem {
      #
      system = "x86_64-linux";

      modules = [
        # Imports
        ./configuration.nix
      ];
    };
  };
}
