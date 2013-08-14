# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice404/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# commented out entries are a wishlist

github "adium", "1.1.1"
github "android", "1.0.0"
github "alfred", "1.0.2"
github "btsync", "1.0.0"
github "colloquy", "1.0.0"
github "cloudapp", "1.0.0", :repo => "jhbabon/puppet-cloudapp"
github "chrome", "1.1.0"
github "dropbox", "1.1.1"
github "elasticsearch", "0.3.0"
github "foreman", "1.0.0"
github "firefox", "1.1.1"
github "flux", "0.0.1"
github "googleearth", "1.0.0"
#github "grabbox", "1.0.0"
github "heroku", "2.0.0"
github "istatmenus4", "1.0.0"
github "iterm2", "1.0.0"
github "java", "1.1.0"
github "limechat", "1.1.0", :repo => "mozilla-boxen/puppet-limechat"
github "minecraft", "1.0.1"
#github "moom", "1.0.0"
github "packer", "1.0.2"
github "phantomjs", "1.0.0"
#github "postbox", "1.0.0"
github "postgresapp", "1.0.0"
github "python", "1.2.1"
github "redis", "1.0.0"
#github "setresx", "1.0.0"
github "skype", "1.0.2"
github "spotify", "1.0.0"
#github "steam", "1.0.1"
github "sublime_text_2", "1.1.2"
#github "super_crate_box", "1.0.0"
github "textual", "3.1.0"
github "tunnelblick", "1.0.2"
github "transmission", "1.0.0"
github "upshot", "1.0.0"
github "vagrant", "2.0.7"
#github "vidyo", "1.0.0"
github "virtualbox", "1.0.4"
github "viscosity", "1.0.0"
github "vlc", "1.0.3"
github "xquartz", "1.1.0"
