{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "idli69";
      user.email = "idlidev69@gmail.com";
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
}
