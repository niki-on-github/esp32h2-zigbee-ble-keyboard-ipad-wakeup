{
  description = "Zigbee project development for ESP32-H2 with nixpkgs-esp-dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-esp-dev.url = "github:mirrexagon/nixpkgs-esp-dev";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-esp-dev, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    let
      overlays = [ nixpkgs-esp-dev.overlays.default ];
      pkgs = import nixpkgs { inherit system overlays; };

      esp32Shell = pkgs.mkShell {
        buildInputs = with pkgs; [
          esp-idf-full
        ];
      };
    in
    {
      devShell = esp32Shell;
    }
  );
}
