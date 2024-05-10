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
      ];
    };
  };
}

# TODO
#
# --move section when in visual mode
# vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
# vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
#
# vim.keymap.set("n", "J", "mzJ`z")
# vim.keymap.set("n", "<C-u>", "<C-u>zz")
#
# -- copy to system buffer
# vim.keymap.set("x", "<leader>y", [["_dP]])
#
# -- next greatest remap ever : asbjornHaland
# vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
# vim.keymap.set("n", "<leader>Y", [["+Y]])
#
# vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
#
# vim.keymap.set("i", "<C-c>", "<Esc>")
#
# vim.keymap.set("n", "Q", "<nop>")
#
# vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
# vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
#
# vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
# vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
#
