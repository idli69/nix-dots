{ ... }:
{
  hardware.graphics = {
    enable      = true;
    enable32Bit = true;
  };

  hardware.cpu.intel.updateMicrocode = true;

  services.thermald.enable = true;

  powerManagement.cpuFreqGovernor = "schedutil";

  zramSwap = {
    enable    = true;
    memoryPercent = 50;
  };
}
