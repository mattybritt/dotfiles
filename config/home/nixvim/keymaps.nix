{ ... }:

{
  programs = {
    nixvim = {
      keymaps = [
        {
          mode = "n"; key = "<leader>e"; action = "<CMD>NvimTreeToggle<NL>";
        }
        {
          mode = "n"; key = "<c-n>"; action = "<CMD>NvimTreeFindFileToggle<NL>";
        }
        {
          mode = "n"; key = "<c-k>"; action = "<cmd><C-U>TmuxNavigateUp<cr>"; #up window move
        }
        {
          mode = "n"; key = "<c-j>"; action = "<cmd><C-U>TmuxNavigateDown<cr>"; #down window move
        }
        {
          mode = "n"; key = "<c-h>"; action = "<cmd><C-U>TmuxNavigateLeft<cr>"; #left window move
        }
        {
          mode = "n"; key = "<c-l>"; action = "<cmd><C-U>TmuxNavigateRight<cr>"; #right window move
        }
        {
          mode = "n"; key = "<c-f>"; action = "<CMD>silent !tmux neww tmux-sessionizer<CR>"; #tmux from vim
        }
        {
          mode = "v"; key = "J"; action = ":m '>+1<CR>gv=gv"; #move selected block down
        }
        {
          mode = "v"; key = "K"; action = ":m '<-2<CR>gv=gv"; #move selected block up
        }
        {
          mode = "n"; key = "<leader><leader>"; action = "<CMD>so /home/matt/.config/nvim/init.lua<CR>"; #source new config
        }
        {
          mode = "n"; key = "J"; action = "mzJ`z"; #appends next line to end of current (mz adds mark z, J (joins) `z goes back to mark z.
        }
        {
          mode = "n"; key = "<C-c>"; action = "<CMD>:nohl<CR>"; #Clears search
        }
        {
          mode = "n"; key = "<C-u>"; action = "<C-u>zz"; #Moves up and keeps buffer centered at cursor
        }
        {
          mode = "n"; key = "Q"; action = "<nop>"; #Ignore caps Q
        }
        {
          mode = "n"; key = "<leader>x"; action = "<cmd>!chmod +x %<CR>"; #Make a file executable
        }
        {
          mode = ["n" "v"]; key = "<leader>d"; action = "\"_d"; #Sends to void register. Use motion after command eg "_dw "_dd
        }
        {
          mode = "v"; key = "<leader>p"; action = "\"_dP"; #Paste testing overriding
        }
        {
          mode = ["n" "v"]; key = "<leader>y"; action = "\"+y"; #Yank selection to system clipboard. Use with motion  command eg "+yw
        }
        {
          mode = "n"; key = "<leader>Y"; action = "\"+Y"; #Yank until end of line to system clipboard
        }
        {
          mode = "n"; key = "<leader>s"; action = ":%s/\<C-r><C-w>\/<C-r><C-w>/gI<Left><Left><Left>"; #Find and replace word under cursor
        }
        #twilight
        {
          mode = "n"; key = "tw"; action = ":Twilight<enter>";
        }
        #buffers
        {
          mode = "n"; key = "tk"; action = ":blast<enter>";
        }
        {
          mode = "n"; key = "tj"; action = ":bfirst<enter>";
        }
        {
          mode = "n"; key = "th"; action = ":bprevious<enter>";
        }
        {
          mode = "n"; key = "tl"; action = ":bnext<enter>";
        }
        {
          mode = "n"; key = "td"; action = ":bdelete<enter>";
        }
        #files
        {
          mode = "n"; key = "QQ"; action = ":q!<enter>";
        }
        {
          mode = "n"; key = "WW"; action = ":w!<enter>";
        }
      ];
    };
  };
}
