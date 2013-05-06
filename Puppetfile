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

github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "ruby",     "3.1.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"
github "sysctl",   "1.0.0"
github "osx",      "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "sublime_text_2", "1.1.0"
github "mou", "1.0.0"
github "transmission", "1.0.0"
github "spotify", "1.0.0"
github "adium", "1.1.1"
github "alfred", "1.0.2"
github "ccleaner", "1.0.2"
github "vlc", "1.0.1"
github "virtualbox", "1.0.2"
github "mysql", "1.1.1", :repo => "joshmcarthur/puppet-mysql"
github "postgresql", "1.0.0"
github "iterm2", "1.0.2"
github "skype", "1.0.2"
github "fluid", "1.0.0"

github "autojump", "1.0.0"
github "heroku", "2.0.0"
github "chrome", "1.1.0"
github "zsh", "1.0.0"
github "phantomjs", "1.0.0"
github "imagemagick", "1.2.0"
github "xquartz", "1.0.0"
github "onepassword", "1.0.0"
github "btsync", "1.0.0", :repo => "joshmcarthur/puppet-btsync"
# Note: Evernote currently can't install due to the need to accept
# a EULA - https://github.com/jasonamyers/puppet-evernote/issues/2
# github "evernote", "1.0.1", :repo => "jasonamyers/puppet-evernote"

github "spectacle", "1.0.1", :repo => "jhubert/puppet-spectacle"
github "gimp", "1.0.0", :repo => "fschwiet/puppet-gimp"
github "calibre", "0.0.1", :repo => "agilecoders/puppet-calibre"
