{ ... }:

{
  programs = {
    nixvim = {
      keymaps = [
        {
          key = "<leader>e";
          action = "<CMD>NvimTreeToggle<NL>";
        }
        {
          key = "<c-n>";
          action = "<CMD>NvimTreeFindFileToggle<NL>";
        }
        {
          key = "<Tab>";
          action = "<CMD>:bnext<NL>"; #next buffer
        }
        {
          key = "<leader>c";
          action = "<CMD>:bp | bd #<NL>"; #previous buffer and close current
        }
      ];
    };
  };
}
