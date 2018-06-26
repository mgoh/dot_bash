PS1="\[\e[2m\\h \W\e[m\] > \[$(tput sgr0)\]"
#PS1="\h \W > \[$(tput sgr0)\]"

export SVN_EDITOR=vi
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin:/usr/local/bin:/Users/mgoh/.gem/ruby/2.0.0/bin:${HOME}/.pyenv/bin
export WORKON_HOME=$HOME/dev/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

source /Users/mgoh/.iterm2_shell_integration.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
        }

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mgoh/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/mgoh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mgoh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/mgoh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

alias personal='7z e -so ~/notes/personal.7z |less'
alias socks='ssh -D 9999 -f -C -q -N red'
alias kill_s="ps -ef|grep ssh\ -D|grep -v grep| awk '{print \$2}' | xargs kill -3"

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
