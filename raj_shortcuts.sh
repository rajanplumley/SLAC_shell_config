#!/bin/bash
##########################
#  RAJAN BASH SHORTCUTS  #
##########################

# Python 3
alias py3='source /reg/g/pcds/pyps/conda/py36env.sh'

# Runs emacs in terminal in black in style
alias emacs='emacs -nw'

# cd to my emacs backup dir
alias emacsbak='cd /reg/neh/home4/rajan-01/.emacs.d/emacs-backup/'

# Opens this file
alias raj='emacs /reg/neh/home4/rajan-01/.bashrc'

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
alias psrelay='ssh -x rajan-01@psrelay'
alias psbuildrhel5='ssh -x rajan-01@psbuild-rhel5'
alias psbuildrhel7='ssh -x rajan-01@psbuild-rhel7'

# Enable X11 forwarding for ssh
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
alias IocManager='/reg/g/pcds/pyps/apps/ioc/latest/IocManager &'
alias daq_control='~cxiopr/daqconfig/scripts/daq_control'
alias netconfig='/reg/common/tools/bin/netconfig'
alias mfxhome='/reg/g/pcds/package/epics/3.14-dev/screens/edm/mfx/current/mfxhome'
alias pcds_shortcuts='. /reg/g/pcds/tools/current/scripts/pcds_shortcuts.sh'

# View processes being run by me on a machine
alias whatamidoing='ps -aux | grep "rajan-01"'

# Edit this file
alias newshortcuts='emacs -nw /reg/neh/home4/rajan-01/.raj_shortcuts.sh'

# Edit exports file
alias newexports='emacs -nw /reg/neh/home4/rajan-01/.raj_exports.sh'

# Read this file to stdout
alias rajshortcuts='grep "alias " /reg/neh/home4/rajan-01/.raj_shortcuts.sh'

# Read exports file to stdout
alias rajexports='grep "export" /reg/neh/home4/rajan-01/.raj_exports.sh'

# Print charge codes that learned
alias chargecodes='cat /reg/neh/home4/rajan-01/notes/lab_notes/charge_codes.txt'

# XRT permission PV
alias xrt?='caget PPS:XRT1:1:SUMACCESS'
