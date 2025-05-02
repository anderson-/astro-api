{
  pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    bash
    bash-completion
    gnumake
    (python3.withPackages (ps: with ps; [ setuptools ]))  # Ensure distutils is included
    watchexec
    jq
  ];

  shellHook = ''
    # Enable bash completion
    source ${pkgs.bash-completion}/etc/profile.d/bash_completion.sh
  '';
}
