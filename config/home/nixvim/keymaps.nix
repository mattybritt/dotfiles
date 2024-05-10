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
          mode = "n";
          key = "<c-k>";
          action = "<CMD>:wincmd k<CR>"; #up window move
        }
        {
          mode = "n";
          key = "<c-j>";
          action = "<CMD>:wincmd j<CR>"; #down window move
        }
        {
          mode = "n";
          key = "<c-h>";
          action = "<CMD>:wincmd h<CR>"; #left window move
        }
        {
          mode = "n";
          key = "<c-l>";
          action = "<CMD>:wincmd l<CR>"; #right window move
        }
        {
          mode = "n";
          key = "<c-f>";
          action = "<CMD>silent !tmux neww tmux-sessionizer<CR>"; #tmux from vim
        }
        {
          mode = "v";
          key = "J";
          action = ":m '>+1<CR>gv=gv"; #move selected block down
        }
        {
          mode = "v";
          key = "K";
          action = ":m '<-2<CR>gv=gv"; #move selected block up
        }
        {
          mode = "n";
          key = "<leader><leader>";
          action = "<CMD>so /home/matt/.config/nvim/init.lua<CR>"; #source new config
        }
        {
          mode = "n"; 
          key = "J"; 
          action = "mzJ`z"; #appends next line to end of current (mz adds mark z, J (joins) `z goes back to mark z.
        }
        {
          mode = "n"; 
          key = "<C-u>"; 
          action = "<C-u>zz"; #Moves up and keeps buffer centered at cursor
        }
        {
          mode = ["n"  "v"]; 
          key = "<leader>d"; 
          action = "\"_d"; #Sends to void register. Use motion after commend eg "_dw "_dd
        }
      ];
    };
  };
}

# TODO
#
# -- copy to system buffer
# vim.keymap.set("x", "<leader>y", [["_dP]])
#
# -- next greatest remap ever : asbjornHaland
# vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
# vim.keymap.set("n", "<leader>Y", [["+Y]])
#
#
# vim.keymap.set("i", "<C-c>", "<Esc>")
#
# vim.keymap.set("n", "Q", "<nop>")
#
# vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
# vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
#
