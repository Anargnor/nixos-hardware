{ lib, ... }:

{
  imports = [
    ../../../common/cpu/amd
    ../../../common/gpu/nvidia/prime.nix
    ../../../common/gpu/nvidia/ada-lovelace
    ../../../common/pc/laptop
    ../../../common/pc/ssd
  ];

  hardware.nvidia = {
    prime = {
      amdgpuBusId = "PCI:101:0:0";
      nvidiaBusId = "PCI:100:0:0";
    };

    dynamicBoost.enable = lib.mkDefault true;
  };

  services = {
    asusd.enable = lib.mkDefault true;
  };
}
