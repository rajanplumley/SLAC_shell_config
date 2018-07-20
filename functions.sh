#!/bin/bash
#####################
#  RAJAN FUNCTIONS  #
#####################

# Takes me back as many directories as specified like goback <num>.  Use back2top to return.
gobak(){
    export LASTBACKDIR=$PWD;
    for ((i=0; i<$1; i++)); do
	cd ../;
    done;
}
bak2top(){
    if [[ -n $LASTBACKDIR ]]; then
	cd $LASTBACKDIR;
    else
	echo "No top set.  Must 'goback' first";
    fi
}

# Reads back the location from a device's netconfig entry
locate(){
    netconfig view $1 | grep Location
}

# Throw shit away
toss(){
    mv $1 /reg/neh/home/rajan-01/TRASH/$1
}

