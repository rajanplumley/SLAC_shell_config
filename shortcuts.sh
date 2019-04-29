#!/bin/bash
##########################
#  RAJAN BASH SHORTCUTS  #
##########################

# Python 3
alias py3='source /reg/g/pcds/pyps/conda/py36env.sh'

# Runs emacs in terminal in black in style
alias emacs='emacs -nw'

# cd to my emacs backup dir
alias emacsbak='cd /reg/neh/home/rajan-01/.emacs.d/emacs-backup/'

# Opens this file
alias raj='emacs /reg/neh/home/rajan-01/raj/bashrc'

# Opens my bash history
alias rajhistory='emacs ~/.bash_history'

# Sources this file and copies itself into .bashrc (use after any changes are made).
alias reload='source ~/.bashrc'

# cd to notes directories
alias labnotes='cd ~/notes/lab_notes'
alias meetingnotes='cd ~/notes/meeting_notes'

# search by file name
alias findfile='ls -d $PWD/* | grep '

# recursive (use carefully)
alias rfindfile='find . -print | grep '

# xauth workaround
alias px='xauth list | grep `echo $DISPLAY | sed -e s/\.0\$// -e s@localhost@$HOSTNAME/unix@` | sed -e "s/^/xauth add /"'

# useful directories
alias xcsarchdir='cd /reg/g/pcds/dist/pds/xcs/misc/'
alias xcsscreens='cd /reg/g/pcds/package/screens/edm/xcs/'
alias cxiscreens='cd /reg/g/pcds/package/screens/edm/cxi/'
alias cxiconfig='cd /reg/g/pcds/pyps/config/cxi/' 
alias pyps='cd /reg/g/pcds/pyps'
alias psdm='cd /reg/g/psdm'
alias iocdir='cd /reg/g/pcds/package/epics/3.14/ioc'

# SSH to my desktop
alias desktop='ssh lcls-pc84302'

# SSH to hutch machines shortcuts
alias feectrl='ssh  xtod-console'
alias xcsctrl='ssh xcs-control'
alias xcsdaq='ssh xcs-daq'
alias xcsopr='ssh xcsopr@xcs-control'
alias cxictrl='ssh cxi-control'
alias cxidaq='ssh cxi-daq'
alias cxiopr='ssh cxiopr@cxi-control'
alias cximon='ssh cxi-monitor'
alias xppctrl='ssh xpp-control'
alias xppdaq='ssh xpp-daq'
alias xppopr='ssh xppopr@xpp-control'
alias mfxctrl='ssh mfx-control'
alias mfxdaq='ssh mfx-daq'
alias mfxopr='ssh mfxopr@mfx-control'

# PS machines
alias psrelay='ssh rajan-01@psrelay'
alias pslogin='ssh rajan-01@pslogin'
alias psb5='ssh rajan-01@psbuild-rhel5'
alias psb6='ssh rajan-01@psbuild-rhel6'
alias psb7='ssh rajan-01@psbuild-rhel7'

# Enable trusted X11 forwarding for ssh
alias ssh='ssh -X -Y'

# Tells me what machine I'm on
alias whereami='echo $HOSTNAME'

# Colorful list shortcuts
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

# Prints ENV shit.
alias pe='printenv'

# Some more PCDS shortcuts
alias lc='/reg/g/pcds/package/epics/3.14-dev/screens/edm/cxi/current/launch-control.sh'
alias pcds_shortcuts='. /reg/g/pcds/tools/current/scripts/pcds_shortcuts.sh'

# View processes being run by me on a machine
alias whatamidoing='ps -aux | grep "rajan-01"'

# Edit this file
alias newshortcuts='emacs -nw /reg/neh/home/rajan-01/raj/shortcuts.sh'

# Edit exports file
alias newexports='emacs -nw /reg/neh/home/rajan-01/raj/exports.sh'

# Read this file to stdout
alias rajshortcuts='grep "alias " /reg/neh/home/rajan-01/raj/shortcuts.sh'

# Read exports file to stdout
alias rajexports='grep "export" /reg/neh/home/rajan-01/raj/exports.sh'

# Print charge codes that learned
alias chargecodes='cat /reg/neh/home4/rajan-01/notes/lab_notes/charge_codes.txt'

# XRT permission PV
alias xrt?='caget PPS:XRT1:1:SUMACCESS'

# Magic Ticket (mbrowne)
alias px='xauth list | grep `echo $DISPLAY | sed -e s/\.0\$// -e s@localhost@$HOSTNAME/unix@` | sed -e "s/^/xauth add /"'

# Magic IMS factory reset string
alias magicstring='echo "^MFD^M ^d1000 ^MCK=0…^M ^d1000 ^J*FD^J^d1000^J*FDÌ^J"'

# LCLS command aliases  ### SUPER HELPFUL ###
alias epicsenv='. /reg/g/pcds/setup/epicsenv-3.14.12.sh'
alias ana_env='. /reg/g/psdm/etc/ana_env.sh'
alias plc_env='. /reg/g/pcds/setup/plcenv.sh'

# Conda shortcuts
alias rajconda='source /reg/neh/home/rajan-01/miniconda/etc/profile.d/conda.sh; conda activate raj'
alias baseconda='source /reg/neh/home/rajan-01/miniconda/etc/profile.d/conda.sh; conda activate base'
alias noconda='conda deactivate'

# Environment shortcuts
alias resetpath='source /reg/neh/home/rajan-01/bin/path_reset'

# Print some useful bash help
alias bashhelp='cat ~/bin/bashhelp'

# Use package manager python
alias pypkg='export PSPKG_ROOT=/reg/g/pcds/pkg_mgr'

# Analysis env
alias anaenv='source /reg/g/psdm/etc/psconda.sh'

# Virtual Windows 
alias plcprog='xfreerdp -g 1916x1054 -u ${USER} --plugin cliprdr plcprog-console'

# ls with file size in MB
alias llmb='ls -l --block-size MB'

# show all jobs running on psanaq
alias psanaq='bjobs -q psanaq -w -u all'
