class people::lonnen {
  include adium
  include alfred
  include btsync
  include dropbox
  include flux
  include googleearth
  include heroku
  include istatmenus4
  include minecraft
  include postgresapp
  include redis
  include skype
  include spotify
  include sublime_text_2
  include transmission
  include viscosity

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

  exec { "curl -fsSL https://dl.bintray.com/mitchellh/packer/0.1.3_darwin_amd64.zip?direct > ${home}/packer.zip && mkdir ${home}/packer && unzip -a ${home}/packer.zip -d ${home}/packer && rm ${home}/packer.zip":
    alias => 'download-packer',
    creates => "${home}/packer"
  }
}
