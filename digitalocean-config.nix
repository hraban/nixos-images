{ ... }: {
  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 4 * 1024; # 4 GiB swap to support evaluating nixpgks.
  } ];
}
