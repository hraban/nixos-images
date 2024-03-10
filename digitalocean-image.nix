{ pkgs ? import <nixpkgs> { } }:
let
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";
    imports = [ <nixpkgs/nixos/modules/virtualisation/digital-ocean-image.nix> ];
    swapDevices = [ {
      device = "/var/lib/swapfile";
      size = 4 * 1024; # 4 GiB swap to support evaluating nixpgks.
    } ];
  };
in
(pkgs.nixos config).digitalOceanImage
