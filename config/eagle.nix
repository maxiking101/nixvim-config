{ pkgs, ... }:
let
  eagle = pkgs.vimUtils.buildVimPlugin {
    pname = "eagle.nvim";
    version = "2024-07-27";
    src = pkgs.fetchFromGitHub {
      owner = "soulis-1256";
      repo = "eagle.nvim";
      rev = "f590404f510be11ef2cf7c68e135441bfa48c9a8";
      hash = "sha256-Q1NGRPP8l2EB+PVFbhpc4vGvXWoC3r2M7RSxhzNDiOo=";
    };
  };
in
{
  extraPlugins = [
    {
      plugin = eagle;
      config = ''lua require("eagle").setup()'';
    }
  ];
}
