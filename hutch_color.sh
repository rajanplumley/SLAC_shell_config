#!/bin/bash

# Build PS1 here and color in ANSI num string as arg $1
color(){
    export PS1="\[\033[0;${1}m\]\u\[\033[1;${1}m\]@\[\033[0;${1}m\]\h:\[\033[1;${1}m\]\w\[\033[m\]\$ "
}

# Colors by subnet num and ANSI num string (requires $SUBNET environment variable to be set!)
subnet_color(){
    if [[ $SUBNET == $1 ]]; then
	color $2
    fi
}

# Define ANSI color codes here
PURPLE='35'
RED='31'
GREEN='32'
ORANGE='33'
GRAY='90'
BLUE='94'
WHITE='37'
YELLOW='93'

#####
# If you want a generic $PS1 for other subnets set it here
export PS1="\[\033[0;${WHITE}m\]\u\[\033[1;${WHITE}m\]@\[\033[0;${WHITE}m\]\h:\[\033[1;${WHITE}m\]\w\[\033[m\]\$ "
#####

# XCS
subnet_color 43 $PURPLE
subnet_color 25 $PURPLE
# CXI
subnet_color 68 $RED
subnet_color 26 $RED
# XPP
subnet_color 38 $GREEN
subnet_color 46 $GREEN
# MFX 
subnet_color 62 $ORANGE
subnet_color 24 $ORANGE
# SXR
subnet_color 39 $GRAY
# AMO
subnet_color 45 $BLUE
# MEC 
subnet_color 45 $YELLOW

