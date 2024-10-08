{...}: {
  programs = {
    nixvim = {
      keymaps = [
        {
          mode = "n";
          key = "<c-k>";
          action = "<cmd>wincmd k<cr>"; #up window move
        }
        {
          mode = "n";
          key = "<c-j>";
          action = "<cmd>wincmd j<cr>"; #down window move
        }
        {
          mode = "n";
          key = "<c-h>";
          action = "<cmd>wincmd h<cr>"; #left window move
        }
        {
          mode = "n";
          key = "<c-l>";
          action = "<cmd>wincmd l<cr>"; #right window move
        }
        {
          mode = "n";
          key = "<c-f>";
          action = "<cmd>silent !tmux neww tmux-sessionizer<cr>"; #tmux from vim
        }
        {
          mode = "v";
          key = "J";
          action = ":m '>+1<cr>gv=gv"; #move selected block down
        }
        {
          mode = "v";
          key = "K";
          action = ":m '<-2<cr>gv=gv"; #move selected block up
        }
        {
          mode = "n";
          key = "<leader><leader>";
          action = "<cmd>so /home/matt/.config/nvim/init.lua<cr>"; #source new config
        }
        {
          mode = "n";
          key = "J";
          action = "mzJ`z"; #appends next line to end of current (mz adds mark z, J (joins) `z goes back to mark z.
        }
        {
          mode = "n";
          key = "<C-c>";
          action = "<cmd>:nohl<cr>"; #Clears search
        }
        {
          mode = "n";
          key = "<C-u>";
          action = "<C-u>zz"; #Moves up and keeps buffer centered at cursor
        }
        {
          mode = "n";
          key = "<C-d>";
          action = "<C-d>zz"; #Moves down and keeps buffer centered at cursor
        }
        {
          mode = "n";
          key = "Q";
          action = "<nop>"; #Ignore caps Q
        }
        {
          mode = "n";
          key = "<leader>x";
          action = "<cmd>!chmod +x %<cr>"; #Make a file executable
        }
        {
          mode = ["n" "v"];
          key = "<leader>d";
          action = "\"_d"; #Sends to void register. Use motion after command eg "_dw "_dd
        }
        {
          mode = "v";
          key = "<leader>p";
          action = "\"_dP"; #Paste testing overriding
        }
        {
          mode = ["n" "v"];
          key = "<leader>y";
          action = "\"+y"; #Yank selection to system clipboard. Use with motion  command eg "+yw
        }
        {
          mode = "n";
          key = "<leader>Y";
          action = "\"+Y"; #Yank until end of line to system clipboard
        }
        {
          mode = "n";
          key = "<leader>s";
          action = ":%s/\<C-r><C-w>\/<C-r><C-w>/gI<Left><Left><Left>"; #Find and replace word under cursor
        }
        #twilight
        {
          mode = "n";
          key = "tw";
          action = ":Twilight<enter>";
        }
        #buffers
        {
          mode = "n";
          key = "tk";
          action = ":blast<enter>";
        }
        {
          mode = "n";
          key = "tj";
          action = ":bfirst<enter>";
        }
        {
          mode = "n";
          key = "th";
          action = ":bprevious<enter>";
        }
        {
          mode = "n";
          key = "tl";
          action = ":bnext<enter>";
        }
        {
          mode = "n";
          key = "td";
          action = ":bdelete<enter>";
        }
        #files
        {
          mode = "n";
          key = "QQ";
          action = ":q!<enter>";
        }
        {
          mode = "n";
          key = "WW";
          action = ":w!<enter>";
        }
      ];
    };
  };
}
