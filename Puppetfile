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

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.4.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "adium",          "1.1.1"
github "alfred",         "1.0.2"
github "autoconf",       "1.0.0"
github "chrome",         "1.1.0"
github "crashplan",      "1.0.1"
github "cyberduck",      "1.0.0"
github "dropbox",        "1.1.0"
github "emacs",          "1.1.0"
github "firefox",        "1.0.5"
github "git",            "1.2.2"
github "googleearth",    "1.0.0"
github "graphviz",       "1.0.0"
github "heroku",         "2.0.0"
github "homebrew",       "1.1.2"
github "imagemagick",    "1.2.0"
github "istatmenus4",    "1.0.0"
github "iTerm2",         "1.0.2"
github "minecraft",      "1.0.1"
github "onepassword",    "1.0.0"
github "phantomjs",      "1.0.0"
github "postgresapp",    "1.0.0"
github "python",         "1.1.1"
github "redis",          "1.0.0"
github "skype",          "1.0.2"
github "spotify",        "1.0.0"
github "sublime_text_2", "1.1.0"
github "tunnelblick",    "1.0.0"
github "vagrant",        "2.0.6"
github "vim",            "1.0.3"
github "virtualbox",     "1.0.2"
github "wget",           "1.0.0"
