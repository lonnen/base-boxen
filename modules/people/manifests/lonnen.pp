class people::lonnen {
  include adium
  include alfred
  include btsync
  include chrome
  include dropbox
  include firefox::nightly
  include firefox::aurora
  include firefox::beta
  include firefox
  include flux

  include go
  go::version { '1.1.1': }

  include googleearth
  include heroku
  include istatmenus4
  include minecraft
  include packer
  include postgresapp
  include redis
  include skype
  include spotify
  include sublime_text_2
  include transmission
  include viscosity
  include vmware_fusion

  include projects::socorro

  $home = "/Users/${::boxen_user}"
  $repos = "${home}/repos"

  exec { 'bash -c "$(curl -fsSL https://raw.github.com/lonnen/dotfiles/master/bin/dotfiles)"':
    alias => 'install-dotfiles',
    creates => "${home}/.dotfiles"
  }

  exec { "${home}/.dotfiles/bin/dotfiles":
    alias => 'update-dotfiles',
    require => Exec[install-dotfiles]
  }
}
