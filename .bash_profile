
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:/usr/local/bin
PATH=$PATH:/Applications/Skim.app/Contents/MacOS
export PATH

alias skim=/Applications/Skim.app/Contents/MacOS/Skim
alias tex=/Applications/TeXnicle.app/Contents/MacOS/TeXnicle
alias clsp="ssh shuoyangd@login.clsp.jhu.edu"
alias damsl="ssh -i ~/.ssh/yanif_rsa bdslss15-hrst@damsl.cs.jhu.edu"
