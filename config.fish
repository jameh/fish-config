set fish_greeting ""

# Eclipse standalone point to Firefox
# set MOZILLA_FIVE_HOME /usr/lib/mozilla
#set LD_LIBRARY_PATH {$MOZILLA_FIVE_HOME}:{$LD_LIBRARY_PATH}

# web browser
set BROWSER firefox

# editor
set EDITOR vim

# rbenv
set PATH $HOME/.rbenv/shims $PATH
set PATH $HOME/.gem/ruby/2.1.0/bin $PATH

# brew
set -x HOMEBREW_NO_EMOJI "you bet"
set PATH /usr/local/{bin,sbin} $PATH

# RTC commandline scripts
set PATH /opt/ibm/TeamConcert/scmtools/eclipse/ $PATH

# ssl
[ -f /usr/local/share/ca-bundle.crt ]; and set -x SSL_CERT_FILE /usr/local/share/ca-bundle.crt

# git prompt
set -g GIT_PS1_SHOWDIRTYSTATE 1
set -g GIT_PS1_SHOWSTASHSTATE 1
set -g GIT_PS1_SHOWUNTRACKEDFILES 1

# bundler
source ~/.config/fish/bundler.fish

# go
set -x GOPATH $HOME/.local/go/
