class people::mattbasta {
  include alfred
  include cloudapp
  include dropbox
  include limechat
  include minecraft
  include skype
  include spotify

  $home = "/Users/${::luser}"
  $repos = "/opt"

  repository { "${repos}/fireplace":
    source => 'mattbasta/fireplace',
    alias => 'clone-fireplace'
  }
}
