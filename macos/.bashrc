export CLICOLOR=1

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=/usr/local/bin:$PATH
PATH=$PATH:/Applications/Skim.app/Contents/MacOS
PATH=$PATH:/Users/shuoyang/Workspace/courses/cs420/google-cloud-sdk/bin
export PATH

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Users/shuoyang/Workspace/moses/opt/lib:/usr/local/Cellar/bear/2.2.1/lib/libear.dylib
export ICU_VERSION="58.2"

alias skim=/Applications/Skim.app/Contents/MacOS/Skim
alias tex=/Applications/TeXnicle.app/Contents/MacOS/TeXnicle
alias clsp="ssh -Yt shuoyangd@login.clsp.jhu.edu 'ssh b18'"
alias clsp2="ssh -Yt shuoyangd@login2.clsp.jhu.edu 'ssh b18'"
# alias damsl="ssh -i ~/.ssh/yanif_rsa bdslss15-hrst@damsl.cs.jhu.edu"
alias tfenv="source /Users/shuoyang/Workspace/pyenv/tensorflow/bin/activate"
alias tnenv="source /Users/shuoyang/Workspace/pyenv/theano/bin/activate"
alias py3env="source /Users/shuoyang/Workspace/pyenv/py3/bin/activate"
alias torchenv="source /Users/shuoyang/Workspace/pyenv/torch/bin/activate"
alias tdenv="source /Users/shuoyang/Workspace/pyenv/torch-dev/bin/activate"
alias gymenv="source /Users/shuoyang/Workspace/courses/rl/assignment1/.env/bin/activate" 

export PS1="\[\e[0;32m\]\u@\h:\W ﷽            \[\e[0m\]"

