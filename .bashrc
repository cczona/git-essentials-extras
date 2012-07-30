# Set git autocompletion and PS1 integration
# Use '$ locate .git-completion.bash' to determine correct path
# If none is found, install bash-completion
# Example, using homebrew: '$ brew install bash-completion'
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /opt/local/etc/bash_completion ]; then
    source /opt/local/etc/bash_completion
fi

# awesome git prompt
PS1='\n\n\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
