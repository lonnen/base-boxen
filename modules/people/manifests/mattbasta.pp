class people::mattbasta {
  include cloudapp
  include dropbox
  include limechat
  include minecraft
  include skype
  include spotify
  #include vidyo

  $home     = "/Users/${::luser}"
  $repos    = "/opt"

  include projects::fireplace
  include projects::amo-validator
  include projects::app-validator
  
  git::config::global { 'user.name':
    value => 'Matt Basta'
  }

  git::config::global { 'user.email':
    value => 'me@mattbasta.com'
  }

  repository { "${repos}/hugbot":
    source => 'mattbasta/hugbot',
    alias => 'clone-hugbot'
  }

  class { 'nodejs::global': version => 'v0.10.5' }
  nodejs::module { 'grunt-cli': node_version => 'v0.10.5' }
}
