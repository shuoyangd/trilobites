workdir=$1
if [ -z $workdir ] ; then
  echo "you need to pass the working directory that you created as the 1st argument"
  exit 1
fi

# copy the .rc files
cp macos/.vimrc ~
cp macos/.bash_profile ~

# move to packages folder
cd $workdir
mkdir packages # put all the source code here

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Python3
echo "Installing `brew info python@3 | head -1`"
brew install python@3  # this gives you Python 3.6.5 as of 05/15/2018

# create virtualenv so as not to pollute the base environment
mkdir $workdir/pyenv
python3 -m venv $workdir/pyenv/py3
echo "python 3.6 virtualenv created in $workdir/pyenv/py3"

# Vim
cd $workdir/packages
git clone https://github.com/vim/vim  # we assume 8.0 here, check if it works when you run this
cd vim
./configure --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config --prefix=/usr/local  # compiling with system default python, not sure if this is gonna break
make
make install
vim --version | head -1
if [ -z "`vim --version | grep "+python"`" ] ; then
  "smells like your vim is not compiled with python correctly.."
fi

# Vundle and all vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install more stuff with brew
brew install cmake wget

# YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py

