#!/bin/bash
#=============================================================
# This script paints the `PS1` a single color based on the 
# current subnet.  Requires the `SUBNET` shell environment
# variable from /reg/g/pcds/setup/pcds_shortcuts.sh
#
# Source this file in your .bashrc
#
# Use `DEFAULT_COLOR` to pick the color for other/non-hutch
# subnets
#=============================================================

# Define subnets here
XCS_SUBNET_LIST=(25 80 81 82 83)
CXI_SUBNET_LIST=(26 68 69 70 71)
XPP_SUBNET_LIST=(84 85 86 87 46)
MFX_SUBNET_LIST=(24 72 73 74 75)
MEC_SUBNET_LIST=(27 76 77 78 79)

# Define ANSI color codes here
PURPLE='35'
RED='31'
GREEN='32'
ORANGE='33'
GRAY='90'
BLUE='94'
WHITE='37'
YELLOW='93'

# Set preferred default color for other subnets
DEFAULT_COLOR=$WHITE

# Build PS1 here , where `${1}` references the color argument.
color(){
    export PS1="\[\033[0;${1}m\]\u\[\033[1;${1}m\]@\[\033[0;${1}m\]\h:\[\033[1;${1}m\]\w\[\033[m\]\$ "
}

# Colors by subnet
subnet_color(){
    if [[ $SUBNET == $1 ]]; then
	color $2
    fi
}

# Main
color $DEFAULT_COLOR
for NUM in ${XCS_SUBNET_LIST[@]}; do
    subnet_color $NUM $PURPLE; done
for NUM in ${CXI_SUBNET_LIST[@]}; do
    subnet_color $NUM $RED; done
for NUM in ${XPP_SUBNET_LIST[@]}; do
    subnet_color $NUM $GREEN; done
for NUM in ${MFX_SUBNET_LIST[@]}; do
    subnet_color $NUM $ORANGE; done
for NUM in ${MEC_SUBNET_LIST[@]}; do
    subnet_color $NUM $YELLOW; done
