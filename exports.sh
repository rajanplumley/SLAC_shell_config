#!/bin/bash

# Default editor
export EDITOR=emacs

# My checkout work area
export WA='/reg/neh/home/rajan-01/checkouts/'

# PDS directory
export PDS='/reg/g/pcds/dist/pds'

# Main epics 3.14 directory
export EPICSTOP='/reg/g/pcds/package/epics/3.14'

# Main epics Dev
export EPICSDEV='/reg/g/pcds/package/epics/3.14-dev'

# My notes
export LABNOTES='/reg/neh/home/rajan-01/notes/lab_notes/'

# Shell config dir
export RAJ='/reg/neh/home/rajan-01/raj/'

# PATH additions
export PATH=$PATH:/reg/common/tools/bin
export PATH=$PATH:/reg/g/pcds/engineering_tools/latest/scripts/
export PATH=$PATH:/reg/neh/operator/xcsopr/bin
export PATH=$PATH:/reg/neh/operator/xppopr/bin
export PATH=$PATH:/reg/neh/operator/cxiopr/bin
export PATH=$PATH:/reg/neh/operator/mfxopr/bin
export PATH=$PATH:$HOME/bin/pyscripts
export PATH=$PATH:$HOME/bin/

# Pretty colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Other SLAC environment variables
export SVNROOT=file:///afs/slac/g/pcds/vol2/svn/pcds
export SVNTRUNK=$SVNROOT/epics/trunk
