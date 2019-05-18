#!/bin/bash
#####################
#  RAJAN FUNCTIONS  #
#####################

# Takes me back as many directories as specified like goback <num>.  Use bak2top to return.
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
	echo "No top set.  Must 'gobak' first";
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

# See how long a host has been up
host_uptime(){
    ssh $1 uptime
}

# Pull up GigE camera screen
gige-expert-screen(){
    epicsenv;
    `caget -St $1:LAUNCH_EDM`;
}

# Go to experiment directory
results_of(){
    EXP=$1;
    HUTCH=${EXP:0:3};
    cd /reg/d/psdm/$HUTCH/$EXP/results;
}
