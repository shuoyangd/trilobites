
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:/usr/local/bin
PATH=$PATH:/Applications/Skim.app/Contents/MacOS
PATH=$PATH:/Users/shuoyang/Workspace/courses/cs420/google-cloud-sdk/bin
export PATH

# export PYTHONPATH=/Users/shuoyang/Workspace/ursus

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Users/shuoyang/Workspace/moses/opt/lib:/usr/local/Cellar/bear/2.2.1/lib/libear.dylib

alias skim=/Applications/Skim.app/Contents/MacOS/Skim
alias tex=/Applications/TeXnicle.app/Contents/MacOS/TeXnicle
alias clsp="ssh shuoyangd@login.clsp.jhu.edu"
alias damsl="ssh -i ~/.ssh/yanif_rsa bdslss15-hrst@damsl.cs.jhu.edu"
alias tfenv="source ~/Workspace/pyenv/tensorflow/bin/activate"
alias tnenv="source ~/Workspace/pyenv/theano/bin/activate"
