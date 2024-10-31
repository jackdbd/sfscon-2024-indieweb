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

  env = {
    CHROMIUM_PATH = /etc/profiles/per-user/jack/bin/chromium;

    # On NixOS, the Chromium version bundled with Playwright does not work
    # because it's not a statically linked executable. So we set the environment
    # variable below to 1 to avoid downloading it. Instead, when we run
    # `slidev export` and `slidev export-notes` we explicitly provide the path
    # to a Chromium binary we have on our system.
    # Note 1: this environment variable must be set BEFORE running `npm install`.
    # https://playwright.dev/docs/library#browser-downloads
    # Note 2: Each version of Playwright bundles a different version of Chromium
    # and it's tested against that version. So, telling Playwright to use a
    # different version of Chromium MIGHT not work. Tip: Playwright's release
    # notes mention the Chromium's version bundled with Playwright. Make sure
    # it's not too different from the one you have on your system.
    # https://github.com/microsoft/playwright/releases
    PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD = 1;
  };

  languages = {
    javascript.enable = true;
    typescript.enable = true;
  };

  packages = with pkgs; [
    git
    nodejs
    zathura # PDF reader
  ];

  pre-commit.hooks = {
    # Disabling the prettier pre-commit altogether seems not to work, so I
    # explicitly configure prettier to ignore markdown files.
    prettier = {
      enable = true;
      excludes = [
        "^slides\.md$"
        "^slides\/.+\.md$"
      ];
    };
  };

  scripts = {
    build.exec = "npx slidev build";
    dev.exec = "npx slidev --open";
    export-notes.exec = ''
      npx slidev export-notes --executable-path "${config.env.CHROMIUM_PATH}" \
        --output assets/sfscon-2024-indieweb-presentation-notes
    '';
    export-slides.exec = ''
      npx slidev export --executable-path "${config.env.CHROMIUM_PATH}" \
        --with-toc --output assets/sfscon-2024-indieweb-presentation
    '';
    versions.exec = ''
      echo "=== Versions ==="
      chromium --version
      git --version
      echo "Node.js $(node --version)"
      echo "=== === ==="
    '';
    view-notes.exec = ''
      zathura assets/sfscon-2024-indieweb-presentation-notes.pdf
    '';
    view-slides.exec = ''
      zathura --mode=presentation assets/sfscon-2024-indieweb-presentation.pdf
    '';
  };
}
