{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "vim-be-good";
        src = pkgs.fetchFromGitHub {
          owner = "mattybritt";
          repo = "vim-be-good";
          rev = "4fa57b7";
          hash = "sha256-XVFq3Gb4C95Y0NYKk08ZjZaGLVF6ayPicIAccba+VRs=";
        };
      })
    ];

    extraConfigLua = ''
    '';
  };
}
