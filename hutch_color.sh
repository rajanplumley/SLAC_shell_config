#!/bin/bash
##########################################
#   COLORIZE UR PROMPT BY HUTCH SUBNET   #
##########################################
# source this in your .bashrc -> 'source hutch_color.sh'
# Creates a prompt using $hutchcolor variable (ANSI color code) of form user@host:/directory/$
# PRO TIP: Switch from "1;" in front of color to "0;" to get rid of light shades.

color(){
    export PS1="\[\033[0;${hutchcolor}m\]\u\[\033[1;${hutchcolor}m\]@\[\033[0;${hutchcolor}m\]\h:\[\033[1;${hutchcolor}m\]\w\[\033[m\]\$ "
}

# Some hutch machines may be on other subnets (see XCS, XPP). 

# CXI SUBNETS
if [[ $SUBNET == 68 ]]; then
    hutchcolor='31' #RED
    color
fi

# XCS SUBNETS
if [[ $SUBNET == 43 ]]; then
    hutchcolor='35' #PURPLE
    color
fi
if [[ $SUBNET == 25 ]]; then
    hutchcolor='35' #PURPLE
    color
fi

# XPP SUBNETS
if [[ $SUBNET == 38 ]]; then
    hutchcolor='32' #GREEN
    color
fi
if [[ $SUBNET == 46 ]]; then
    hutchcolor='32' #GREEN
    color
fi

# MFX SUBNETS
if [[ $SUBNET == 62 ]]; then
    hutchcolor='33' #ORANGE?
    color
fi

# SXR SUBNETS
if [[ $SUBNET == 39 ]]; then
    hutchcolor='90' #GRAY
    color
fi

# AMO SUBNETS
if [[ $SUBNET == 37 ]]; then
    hutchcolor='94' #BLUE
    color
fi

# MEC SUBNETS
if [[ $SUBNET == 45 ]]; then
    hutchcolor='93' #YELLOW
    color
fi

# DEV/PSDEV SUBNETS
if [[ $SUBNET == 33 ]]; then
    hutchcolor='37' #WHITE
    color
fi
if [[ $SUBNET == 165 ]]; then
    hutchcolor='37' #WHITE
    color
fi
