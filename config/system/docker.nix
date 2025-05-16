{ config, ... }:

{
  config = {
    systemd.services = {
      docker = {
        enable = true;
        description = "Docker Application Container Engine";
        documentation = [ "https://docs.docker.com" ];
      };
    };
  };
}

