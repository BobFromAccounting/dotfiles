# aliases, shell variables, and prompt
source "${HOME}/.bash_aliases"
source "${HOME}/.bash_prompt"
source "${HOME}/.bash_shell_variables"
source "${HOME}/.bash_git_autocomplete"
source "${HOME}/.bash_git_prompt"
source "${HOME}/.bash_git_syntax_aware"
#[[ -s "$HOME/.rvm/contrib/ps1_functions" ]] &&
#source "$HOME/.rvm/contrib/ps1_functions"


# PATH...
PATH="${HOME}/bin"                                            # First home folder bin
PATH="${PATH}:/usr/local/bin:/usr/local/sbin"                 # local stuffs
PATH="${PATH}:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"     # Then add the other default OS X places
PATH="${PATH}:~/.composer/vendor/bin"                         # PHP Composer binaries
export PATH

export CDPATH=".:${HOME}/sites/"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval $(thefuck --alias)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/serverless.bash ] && . /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/sls.bash ] && . /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/slss.bash ] && . /Users/tarek/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/slss.bash