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
  include virtualbox
  include vagrant

  $home = "/Users/${::boxen_user}"
  $repos = "${home}/repos"

  repository { "${repos}/socorro":
    source => 'lonnen/socorro',
    alias => 'clone-socorro'
  }

  exec { 'bash -c "$(curl -fsSL https://raw.github.com/lonnen/dotfiles/master/bin/dotfiles)"':
    alias => 'install-dotfiles',
    creates => "${home}/.dotfiles"
  }

  exec { "${home}/.dotfiles/bin/dotfiles":
    alias => 'update-dotfiles',
    require => Exec[install-dotfiles]
  }
}
