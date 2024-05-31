{
  systemd = {
    user.services.gammastep = {
      description = "Starts gammastep - which adjust the colour of the screen according to time.";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "/etc/profiles/per-user/matt/bin/gammastep"; # meh
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
}
