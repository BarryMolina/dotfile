export PATH="/usr/local/temp/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias python='python3.6'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/barrymolina/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/barrymolina/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/barrymolina/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/barrymolina/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# The next line adds mvim to the PATH
export PATH=$PATH:/Applications/MacVim.app/Contents/bin

# colorize prompt, change prompt format
export PS1="\[\033[37m\]\u@\[\033[37m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# emable colors
export CLICOLOR=1
# define ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced
# improve ls
alias ls='ls -Gh'
# TAB through completions

# edit this file
alias bp="vim ~/dotfile/bash_profile"

# SSH
alias router="ssh barry@router.home"
alias home="ssh barry@homeassistant.home"

