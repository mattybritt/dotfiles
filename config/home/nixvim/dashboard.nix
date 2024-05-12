{
  programs.nixvim = {
    plugins.dashboard = {
      enable = true;
      header = [
        "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗"
        "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║"
        "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║"
        "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║"
        "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║"
        "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
      ];
      center = [
          {
            icon = "  ";
            desc = "Find  File                              ";
            action = "Leaderf file --popup";
            shortcut = "<Leader> f f";
          }
          {
            icon = "  ";
            desc = "Recently opened files                   ";
            action = "Leaderf mru --popup";
            shortcut = "<Leader> f r";
          }
          {
            icon = "  ";
            desc = "Project grep                            ";
            action = "Leaderf rg --popup";
            shortcut = "<Leader> f g";
          }
          {
            icon = "  ";
            desc = "Open Nvim config                        ";
            action = "tabnew $MYVIMRC | tcd %:p:h";
            shortcut = "<Leader> e v";
          }
          {
            icon = "  ";
            desc = "New file                                ";
            action = "enew";
            shortcut = "e           ";
          }
          {
            icon = "  ";
            desc = "Quit Nvim                               ";
            action = "qa";
            shortcut = "q           ";
          }
      ];
    };
  };
}
