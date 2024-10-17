{
  config,
  inputs,
  lib,
  pkgs,
  ...
}: {
  enterShell = ''
    versions
  '';

  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  env = {
    GREET = "devenv";
  };

  languages = {
    javascript.enable = true;
    typescript.enable = true;
  };

  packages = [
    pkgs.git
    pkgs.nodejs
  ];

  pre-commit.hooks = {
    prettier.enable = true;
    shellcheck.enable = true;
  };

  # https://devenv.sh/scripts/
  scripts = {
    build.exec = "npx slidev build";
    dev.exec = "npx slidev --open";
    versions.exec = ''
      echo "=== Versions ==="
      git --version
      echo "Node.js $(node --version)"
      echo "=== === ==="
    '';
  };

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };
}
