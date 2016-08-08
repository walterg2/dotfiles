export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
export GATLING_HOME=$HOME/Workspace/Gatling/gatling-charts-highcharts-2.0.1

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
