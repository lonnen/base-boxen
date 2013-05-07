class people::lonnen {
  include adium
  include alfred
  include chrome
  include dropbox
  include firefox::nightly
  include istatmenus4
  include postgresapp
  include python
  include sublime_text_2
  include vagrant

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
