#umask 022

set prompt="[`hostname`@`logname`:$cwd]# "
if ( $?prompt ) then
        set history=100
endif

set history=100

#######################################
####     tools load for EDA        ####
#######################################

source /ECEnet/Apps1/linux/cad12/tools/eda_tools.csh

#######################################
###         Common setting         ####
#######################################

if ( `uname -s` == Linux ) then
	set path=( $path $HOME /usr/local/sbin \
			/usr/local/bin /sbin /bin /usr/sbin /usr/bin /usr/X11R6/bin \
			/etc /usr)
endif
if ( `uname -s` == SunOS ) then
	set path=( $path $HOME /usr/local/sbin \
	       	 	/usr/local/bin /sbin /bin /usr/sbin /usr/bin /usr/openwin/bin \
			/etc /usr)
endif



#######################################
#### user defined cadence setting  ####
#######################################

#setenv CDS_LOAD_ENV CWD         #  always read .cdsenv from current working directory 
#setenv CDS_LOAD_ENV False       #  Do not load ~/.cdsenv nor CWD/.cdsenv 
#setenv CDS_LOAD_ENV addCWD      #  Load ~/.cdsenv followed by CWD/.cdsenv 
#setenv CDS_LOAD_ENV CWDElseHome #  Loads CWD/.cdsenv if it exists, or else ~/.cdsenv, if it exists 
setenv CDS_LOAD_ENV CSF          #  Search setup.loc for <toolname>.cdsenv files. Specially, you need this option for HSPICE integration with cadence


#######################################
####             alias             ####
#######################################

alias path			'echo $path'
alias setprompt		'set prompt="[`hostname`@`logname`:$cwd]# "'
alias cd			'cd \!*; setprompt'
alias df            'df -h'
alias so            'source ~/.cshrc'
alias user_ID       'setenv DISPLAY xxx.xxx.xxx.xxx:x.x' # modify for your case

alias ic5 			'setenv CDSHOME /tools/cadence/IC5141;setenv CDS_ROOT $CDSHOME;setenv CDS_INST_DIR $CDSHOME;setenv CDS_HOME $CDSHOME;set path=(`echo $path | sed -e 's/IC615/IC5141/g'`);setenv ASSURAHOME /tools/cadence/ASSURA41_5141;set path=(`echo $path | sed -e 's/ASSURA41/ASSURA41_5141/g'`)'
alias ic6 			'setenv CDSHOME /tools/cadence/IC615;setenv CDS_ROOT $CDSHOME;setenv CDS_INST_DIR $CDSHOME;setenv CDS_HOME $CDSHOME;set path=(`echo $path | sed -e 's/IC5141/IC615/g'`);setenv ASSURAHOME /tools/cadence/ASSURA41;set path=(`echo $path | sed -e 's/ASSURA41_5141/ASSURA41/g'`)'

alias load			'/COEnet/Linux/bin/linux-load'	

alias ergs			'ssh -X -p 27 Ergs.coe.neu.edu'
alias farads		'ssh -X -p 27 Farads.coe.neu.edu'
alias grams			'ssh -X -p 27 Grams.coe.neu.edu'
alias hertz			'ssh -X -p 27 Hertz.coe.neu.edu'
alias joules		'ssh -X -p 27 Joules.coe.neu.edu'
alias laminar		'ssh -X -p 27 Laminar.coe.neu.edu'
alias moles			'ssh -X -p 27 Moles.coe.neu.edu'
alias nano			'ssh -X -p 27 Nano.coe.neu.edu'
alias ohms			'ssh -X -p 27 Ohms.coe.neu.edu'
alias quark			'ssh -X -p 27 Quark.coe.neu.edu'
alias Ergs			ergs
alias Farads		farads
alias Grams			grams
alias Hertz			hertz
alias Joules		joules
alias Laminar		laminar
alias Moles			moles
alias Nano			nano
alias Ohms			ohms
alias Quark			quark

#######################################
####        alias for each OS      ####
#######################################

if ( `uname -s` == SunOS ) then
alias ls 'ls'
endif
if ( `uname -s` == Linux ) then
alias ls 'ls --color'
endif
setprompt
setprompt