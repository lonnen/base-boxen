class people::lonnen {
  include alfred
  include dropbox
  include sublime_text_2

  $home = "/Users/${::boxen_user}"
  $repos = "${home}/repos"

  repository { "${repos}/socorro":
    source => 'lonnen/socorro',
    alias => 'clone-socorro'
  }

  exec { 'bash -c "$(curl -fsSL https://raw.github.com/lonnen/dotfiles/master/bin/dotfiles)"':
    alias => 'install-dotfiles',
    unless => 'type -P dotfiles'
  }

  exec { 'dotfiles':
    alias => 'update-dotfiles',
    onlyif => "type -P dotfiles"
  }
}
