class people::lonnen {
  include sublime_text_2

  $home = "/Users/${::boxen_user}"
  $repos = "${home}/repos"

  repository { "${repos}/dotfiles":
    source => 'lonnen/dotfiles',
  }
}
