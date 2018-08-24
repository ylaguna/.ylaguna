SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

ln -s $SCRIPTPATH/.vimrc ~/.vimrc

echo DONE
