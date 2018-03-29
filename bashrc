#!/bin/bash
#################
#  RAJAN STUFF  #
#################

# Import PCDS stuff (this is a soft link to PCDS engineering tools bashrc)
source /reg/neh/home/rajan-01/raj_bash_config/pcds

# Import personal stuff
source /reg/neh/home/rajan-01/raj_bash_config/shortcuts.sh
source /reg/neh/home/rajan-01/raj_bash_config/functions.sh
source /reg/neh/home/rajan-01/raj_bash_config/exports.sh
source /reg/neh/home/rajan-01/raj_bash_config/hutch_color.sh

# Jason added this
[[ `echo $HOSTNAME | grep 'mfx'` ]] && export instrument='mfx' || export instrument='cxi'
INSTRUMENT=`echo $instrument | awk '{print toupper($0)}'`
alias current="cd /reg/g/pcds/package/epics/3.14-dev/screens/edm/$instrument/current/"


