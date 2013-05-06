class people::joshmcarthur {

  # Core boxen
  include git
  include sublime_text_2
  include mou
  include spotify
  include adium
  include alfred
  include ccleaner
  include vlc
  include virtualbox
  include mysql # joshmcarthur/puppet-mysql
  include iterm2::stable
  include skype

  # Need to add this to .zshrc after install
  # [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

  include autojump
  include xquartz
  include imagemagick
  include heroku
  include chrome::canary
  include postgresql
  include zsh
  include phantomjs
  include onepassword
  include fluid
  include transmission

  # Third-party
  include evernote # jasonamyers/puppet-evernote
  include spectacle # jhubert/puppet-spectacle
  include gimp # fschwiet/puppet-gimp
  include calibre # agilecoders/puppet-calibre

  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  $home     = "/Users/${::luser}"
  $dotfiles ="${home}/.dotfiles"
  $oh_my_zsh_root = "${home}/.oh-my-zsh"

  repository { $dotfiles:
    source => 'joshmcarthur/dotfiles',
  }

  repository { $oh_my_zsh_root:
    source => 'robbyrussell/oh-my-zsh'
  }

  file { "${home}/.irbrc":
    ensure =>  'link',
    target =>  "${dotfiles}/.irbrc",
    require =>  Repository[$dotfiles]
  }

  file { "${home}/.zshrc":
    ensure =>  'link',
    target =>  "${dotfiles}/.zshrc",
    require =>  Repository[$dotfiles]
  }

  file { "${home}/.gitconfig":
    ensure =>  'link',
    target =>  "${dotfiles}/.gitconfig",
    require =>  Repository[$dotfiles]
  }

  # From: https://github.com/boxen/puppet-git/issues/6
  Git::Config::Global <| title == 'core.excludesfile' |> {
    value => "${dotfiles}/.gitignore_global"
  }

  file { "${home}/.bundle":
    ensure =>  'link',
    target =>  "${dotfiles}/.bundle",
    require =>  Repository[$dotfiles]
  }

  file { "${home}/.oh-my-zsh/themes/sudojosh.zsh-theme":
    ensure =>  'link',
    target =>  "${dotfiles}/sudojosh.zsh-theme",
    require =>  Repository[$dotfiles]
  }
}
