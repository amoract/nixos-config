{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    initrd.kernelModules = [ "amdgpu" ];
    kernelParams = [ "psmouse.synaptics_intertouch=0" ]; 
  };
}
