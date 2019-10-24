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
subnet_color 25 $PURPLE
subnet_color 80 $PURPLE
subnet_color 81 $PURPLE
subnet_color 82 $PURPLE
subnet_color 83 $PURPLE

# CXI
subnet_color 26 $RED
subnet_color 68 $RED
subnet_color 69 $RED
subnet_color 70 $RED
subnet_color 71 $RED

# XPP
subnet_color 84 $GREEN
subnet_color 85 $GREEN
subnet_color 86 $GREEN
subnet_color 87 $GREEN
subnet_color 46 $GREEN

# MFX 
subnet_color 24 $ORANGE
subnet_color 72 $ORANGE
subnet_color 73 $ORANGE
subnet_color 74 $ORANGE
subnet_color 75 $ORANGE

# MEC 
subnet_color 27 $YELLOW
subnet_color 76 $YELLOW
subnet_color 77 $YELLOW
subnet_color 78 $YELLOW
subnet_color 79 $YELLOW
