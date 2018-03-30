#!/bin/bash
#####################
#  RAJAN FUNCTIONS  #
#####################

# Reads back the location from a device's netconfig entry
locate(){
    netconfig view $1 | grep Location
}

# Throw shit away
toss(){
    mv $1 /reg/neh/home/rajan-01/TRASH/
}

