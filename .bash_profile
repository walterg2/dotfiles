
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\`if [ \$? = 0 ]; then echo 👍 ; else echo 💥 ; fi\`\n\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# AWS Auto-Completion
complete -C aws_completer aws

# Bash Auto-Complete
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Git Auto-Complete
test -f ~/.git-completion.bash && . $_

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/george.walters/.gvm/bin/gvm-init.sh" ]] && source "/Users/george.walters/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/george.walters/.sdkman"
[[ -s "/Users/george.walters/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/george.walters/.sdkman/bin/sdkman-init.sh"
