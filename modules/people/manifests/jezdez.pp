class people::jezdez {
  include adium
  include alfred
  include chrome
  include dropbox
  include firefox::nightly
  include istatmenus4
  include postgresapp
  include python
  include sublime_text_2
  include textual
  include virtualbox
  include vagrant

  $home = "/Users/${::boxen_user}"
  $repos = "${home}/repos"

  repository { "${repos}/socorro":
    source => 'lonnen/socorro',
    alias => 'clone-socorro'
  }

}
