{ ... }:
{
  programs.git = {
    enable   = true;
    settings = {
      user = {
        name  = "idli69";
        email = "idlidev69@gmail.com";
      };
      init.defaultBranch = "main";
      pull.rebase        = true;
    };
  };
}
