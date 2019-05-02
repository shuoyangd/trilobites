export LD_LIBRARY_PATH="/home/shuoyangd/local/lib":"/home/shuoyangd/local/lib64":"/home/shuoyangd/local/hdf5/lib"
export LIBRARY_PATH="/home/shuoyangd/local/lib":"/home/shuoyangd/local/lib64"

# GPU-relevant library settings
# export CUDA_HOME="/opt/NVIDIA/cuda-7.5" # specifically use 7.5
export HDF5_DIR="/home/shuoyangd/local/hdf5"
export CUDA_HOME="/opt/NVIDIA/cuda-9.0"
# export CUDA_VISIBLE_DEVICES="0,1,2,3"
# export CPATH="/home/shuoyangd/local/lib/cudnn/include":$CPATH # enable cudnn
# export LIBRARY_PATH="/home/shuoyangd/local/lib/cudnn/lib64":$LIBRARY_PATH # enable cudnn
# export LD_LIBRARY_PATH="/home/shuoyangd/local/lib/cudnn/lib64":"$CUDA_HOME/lib64":$LD_LIBRARY_PATH # enable cudnn
export CPATH="/home/shuoyangd/local/lib/cudnn6/include":$CPATH # enable cudnn6
export LIBRARY_PATH="/home/shuoyangd/local/lib/cudnn6/lib64":$LIBRARY_PATH # enable cudnn6
export LD_LIBRARY_PATH="/home/shuoyangd/local/lib/cudnn6/lib64":"$CUDA_HOME/lib64":$LD_LIBRARY_PATH # enable cudnn6
# export LD_LIBRARY_PATH="$CUDA_HOME/lib64":$LD_LIBRARY_PATH # disable cudnn
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/home/shuoyangd/local/pkg/gcc-5.4.0/lib64"
export CUDA_CUDART_LIBRARY="$CUDA_HOME/lib64/libcudart.so"
export CUDA_TOOLKIT_ROOT_DIR=$CUDA_HOME

export BOOST_LIBRARYDIR="/home/shuoyangd/local/lib"
export BOOST_ROOT="/home/shuoyangd/local/pkg/boost_1_58_0"

export CPLUS_INCLUDE_PATH="/home/shuoyangd/local/lib"
export PYTHONPATH="/home/shuoyangd/local/pkg/faiss/python"

export JAVA_HOME=/home/shuoyangd/local/lib/jdk1.8.0_73

export CORENLP_HOME=/export/b18/shuoyangd/software/stanford-corenlp

export PATH=$HOME/.linuxbrew/bin:$PATH  # linux brew comes after local and others
export PATH=/home/shuoyangd/local/bin:/home/shuoyangd/srilm/bin:/home/shuoyangd/srilm/bin/i686-m64:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$CUDA_HOME/bin:$PATH
# export PATH=$PATH:/export/b18/shuoyangd/software/ducttape-0.3 # add ducttape
export PATH=$PATH:/export/b18/shuoyangd/software/ducttape-0.4:/home/shuoyangd/tmp/ducttape # add ducttape
export PATH=/home/shuoyangd/local/pkg/gcc-5.4.0/bin:$PATH
# export PATH=$PATH:$HOME/.linuxbrew/bin  # linux brew comes after local and others

MANPATH="$(brew --prefix)/share/man:$MANPATH"
MANPATH=$MANPATH:~/srilm/man
export MANPATH

export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# ==============================================================================
# some alias for easy usage
# ==============================================================================

# machines
alias prim="ssh a18"
alias bkup="ssh b18"

# screen
# alias monoling="screen -r 100598.pts-2.b18"
# alias syntax="screen -r 64512.pts-2.b18"
alias monoling="screen -r monoling"
alias syntax="screen -r syntax"

# virtualenv
alias kenlmenv="source /home/shuoyangd/pyenv/kenlm/bin/activate"
alias tnenv="source /home/shuoyangd/pyenv/theano/bin/activate"

## base python 2/3 environtment
alias py2env="source /home/shuoyangd/pyenv/py2torch/bin/activate"
alias py3env="source /home/shuoyangd/pyenv/py3/bin/activate"

## pytorch environments
alias py3tenv="source /home/shuoyangd/pyenv/py3t/bin/activate"  # default pytorch
alias py3t4env="source /home/shuoyangd/pyenv/py3t4/bin/activate"  # pytorch 0.4
alias py3tbenv="source /home/shuoyangd/pyenv/py3tb/bin/activate"  # pytorch bleeding

## mxnet environment
alias py3mxenv="source /home/shuoyangd/pyenv/py3mx/bin/activate"

## dev torch environment
alias tdenv="source /home/shuoyangd/pyenv/torch-dev/bin/activate"

# source ~/pyenv/pexpect/bin/activate

# automatic bash log
export BASHLOG='/home/shuoyangd/bash_history.log'
export SAVEBASH='if [ "$(id -u)" -ne 0 ]; then echo "`date +%F:%H:%M:%S` `hostname` `pwd` `history 1`" >> ${BASHLOG}; fi'
export SAVEBASHLOCAL='if [ "$(id -u)" -ne 0 ]; then echo "`date +%F:%H:%M:%S` `hostname` `pwd` `history 1`" >> .bash_history.local; fi'
export PROMPT_COMMAND="${SAVEBASH};${SAVEBASHLOCAL}"

# trying to get extract-ghkm linked
# export LD_LIBRARY_PATH="/home/shuoyangd/moses/lib":$LD_LIBRARY_PATH
# export LIBRARY_PATH="/home/shuoyangd/moses/lib":$LIBRARY_PATH

# added for anaconda 3
# touches root environtment, evil.
# export PATH=/export/b18/shuoyangd/software/anaconda3/bin:$PATH

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# add display info
export DISPLAY=localhost:0

# ==============================================================================
# make everything colorful (copied from https://unix.stackexchange.com/a/178816)
# ==============================================================================
# man page
export TERM=xterm-256color

function _colorman() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;35m") \
    LESS_TERMCAP_md=$(printf "\e[1;34m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[7;40m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;33m") \
      "$@"
}
function man() { _colorman man "$@"; }
function perldoc() { command perldoc -n less "$@" |man -l -; }

# ==============================================================================
# grep
GREP_OPTS='--color=auto'      # for aliases since $GREP_OPTIONS is deprecated
GREP_COLOR='1;32'             # (legacy) bright green rather than default red
GREP_COLORS="ms=$GREP_COLOR"  # (new) Matching text in Selected line = green
alias   grep='grep $GREP_OPTS'
alias egrep='egrep $GREP_OPTS'
alias fgrep='fgrep $GREP_OPTS'

# ==============================================================================
# ls
# use the config at ~/.dircolors if it exists, otherwise generate anew
eval "$( dircolors --sh $(ls -d ~/.dircolors 2>/dev/null) )"

# Usage: _ls_colors_add BASE NEW [NEW...]
# Have LS color given NEW extensions the way BASE extension is colored
_ls_colors_add() {
  local BASE_COLOR="${LS_COLORS##*:?.$1=}" NEW
  if [ "$LS_COLORS" != "$BASE_COLOR" ]; then
    BASE_COLOR="${BASE_COLOR%%:*}"
    shift
    for NEW in "$@"; do
      if [ "$LS_COLORS" = "${LS_COLORS#*.$NEW=}" ]; then
        LS_COLORS="${LS_COLORS%%:}:*.$NEW=$BASE_COLOR:"
      fi
    done
  fi
  export LS_COLORS
}

_ls_colors_add zip jar xpi            # archives
_ls_colors_add jpg ico JPG PNG webp   # images
_ls_colors_add ogg opus               # audio (opus now included by default)

CLICOLOR=1   # BSD auto-color trigger (like  ls -G  but for everything)
if ls -ld --color=auto / >/dev/null 2>&1
  then alias ls="ls -ph --color=auto"
  else alias ls="ls -ph"
fi

# ==============================================================================
# grc
# using this as a variable allows easier calling down lower
export GRC='grc -es --colour=auto'

# loop through known commands plus all those with named conf files
# the last item seems to take a long time, disable this
# for cmd in g++ head ld ping6 tail traceroute6 `locate grc/conf.`; do
for cmd in g++ head ld ping6 tail traceroute6; do
  cmd="${cmd##*grc/conf.}"  # we want just the command
  # if the command exists, alias it to pass through grc
  type "$cmd" >/dev/null 2>&1 && alias "$cmd"="$GRC $cmd"
done

# This needs run-time detection. We even fake the 'command not found' error.
configure() {
  if [[ -x ./configure ]]; then
    colourify ./configure "$@"
  else
    echo "configure: command not found" >&2
    return 127
  fi
}

# GRC plus LS awesomeness (assumes you have an alias for ls)
unalias ll 2>/dev/null
if ls -ld --color=always / >/dev/null 2>&1; then GNU_LS="--color=always"; fi

ll() {
  if [[ -t 1 ]] || [[ -n "$CLICOLOR_FORCE" ]]
    then colourify ls -l $GNU_LS "$@"
    else ls -l "$@"
  fi
}

# ==============================================================================
# diff
#!/usr/bin/perl
# use strict;
# use warnings;
#
# open (DIFF, "-|", "diff", @ARGV) or die $!;
#
# my $ydiff = 1;
# while (<DIFF>) {
#   if (not -t 1) {
#     print;
#     next;
#   }
#   chomp;
#   $ydiff = 0 if /^[ <>\@+-]/ or ($. == 1 && /^\d+[a-z]{1,5}\d+$/);
#   my $color = "";
#   if (! $ydiff && /^[\@+-<>]/) {
#     $color = (/^[<-](?!--$)/ ? 1 : /^[+>]/ ? 2 : 5);
#   } elsif ($ydiff && /\t {6}([<|>])(?:\t|$)/) {
#     $color = ($1 eq "<" ? 1 : $1 eq ">" ? 2 : 4);
#   }
#   $color ? printf ("\e[1;3%dm%s\e[0;0m\n",$color,$_) : print "$_\n";
# }
# close DIFF;

# ==============================================================================
# bash prompt

export PS1="\[\e[0;32m\]\u@\h:\W ﷽            \[\e[0m\]"
# export PS1="\[\e[0;32m\]\u@\h:\W ﷽    \[\e[0m\]"

# Shorten home dir, cygwin drives, paths that are too long
# if [ -d /cygdrive ] && uname -a |grep -qi cygwin; then CYGWIN_OS=1; fi
# function PSWD() {
#   local p="$*" space A B cols="${COLUMNS:-`tput cols 2>/dev/null || echo 80`}"
#   p="${p/$HOME/\~}"         # shrink home down to a tilde
#   if [ -n "$CYGWIN_OS" ] && [ "${p#/cygdrive/?/}" != "$p" ]; then
#     p="${p:10:1}:${p:11}"   # /cygdrive/c/hi -> c:/hi
#   fi
#   space="$((${#USER}+${#HOSTNAME}+6))"  # width w/out the path
#   if [ "$cols" -lt 60 ]; then echo -n "$N "; space=-29; p="$p$N\b"; fi
#   if [ "$cols" -lt "$((space+${#p}+20))" ]; then # < 20 chars for the command
#     A=$(( (cols-20-space)/4 ))      # a quarter of the space (-20 for cmd)
#     if [ $A -lt 4 ]; then A=4; fi   # 4+ chars from beginning
#     B=$(( cols-20-space-A*2 ))      # half (plus rounding) of the space
#     if [ $B -lt 8 ]; then B=8; fi   # 8+ chars from end
#     p="${p:0:$A}..${p: -$B}"
#   fi
#   echo "$p"
# }

# PSC() { echo -ne "\[\033[${1:-0;38}m\]"; }
# PR="0;32"       # default color used in prompt is green
# if [ "$(id -u)" = 0 ]; then
#     sudo=41     # root is red background
#   elif [ "$USER" != "${SUDO_USER:-$USER}" ]; then
#     sudo=31     # not root, not self: red text
#   else sudo="$PR"   # standard user color
# fi
# PROMPT_COMMAND='[ $? = 0 ] && PS1=${PS1[1]} || PS1=${PS1[2]}'
# PSbase="$(PSC $sudo)\u$(PSC $PR)@\h $(PSC 33)\$(PSWD \w)"
# PS1[1]="$PSbase$(PSC $PR)\$ $(PSC)"
# PS1[2]="$PSbase$(PSC  31)\$ $(PSC)"
# PS1="${PS1[1]}"
# unset sudo PR PSbase

# ==============================================================================
# end of bash color settings
# ==============================================================================
