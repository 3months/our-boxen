class people::joshmcarthur {

  # Core boxen
  include sublime_text_2
  include mou
  include spotify
  include adium
  include alfred
  include ccleaner
  include vlc
  include virtualbox
  include mysql
  include iterm2::stable
  include skype

  # Need to add this to .zshrc after install
  # [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

  include autojump
  include heroku
  include chrome::canary
  include postgresql
  include zsh
  include phantomjs
  include onepassword
  include fluid

  # Third-party
  include evernote # jasonamyers/puppet-evernote
  include spectacle # dieterdemeyer/puppet-spectacle
  include gimp # fschwiet/puppet-gimp
  include oh-my-zsh # pfeff/puppet-oh-my-zsh

  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  $home     = "/Users/${::luser}"
  $dotfiles ="${home}/.dotfiles"

  repository { $dotfiles:
    source => 'joshmcarthur/dotfiles',
  }

  file { '${home}/.gemrc':
    ensure: 'link',
    target: "${dotfiles}/.gemrc",
    require: Repository[$dotfiles]
  }

  file { '${home}/.irbrc':
    ensure: 'link',
    target: "${dotfiles}/.irbrc",
    require: Repository[$dotfiles]
  }

  file { '${home}/.zshrc':
    ensure: 'link',
    target: "${dotfiles}/.zshrc",
    require: Repository[$dotfiles]
  }

  file { '${home}/.gitconfig':
    ensure: 'link',
    target: "${dotfiles}/.gitconfig",
    require: Repository[$dotfiles]
  }

  file { '${home}/.gitignore_global':
    ensure: 'link',
    target: "${dotfiles}/.gitignore_global",
    require: Repository[$dotfiles]
  }

  file { '${home}/.bundle':
    ensure: 'link',
    target: "${dotfiles}/.bundle",
    require: Repository[$dotfiles]
  }

  file { '${home}/.oh-my-zsh/themes/sudojosh.zsh-theme':
    ensure: 'link',
    target: "${dotfiles}/sudojosh.zsh-theme",
    require: Repository[$dotfiles]
  }
}