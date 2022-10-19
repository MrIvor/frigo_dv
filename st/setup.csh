unsetenv PROJ_NAME
setenv   PROJ_NAME   frigoris

unsetenv IS_BT_IT_ST 
setenv   IS_BT_IT_ST st

unsetenv DUT
setenv   DUT

set source_cmd = ($_)
echo "source_cmd:  [$source_cmd]"
echo "source_cmd1: [$source_cmd[1]]"
echo "source_cmd2: [$source_cmd[2]]"
echo "source_cmd3: [$source_cmd[3]]"

set source_dir = `readlink -m "$source_cmd[2]" | xargs dirname`

echo "source_dir: [$source_dir]"

set proj_dir  = `echo $source_dir|sed "s?\(.*/$PROJ_NAME\).*?\1?"`

echo "proj_dir: [$proj_dir]"

unsetenv BT_IT_ST_HOME
#setenv   BT_IT_ST_HOME $proj_dir/verify/$IS_BT_IT_ST
setenv   BT_IT_ST_HOME $source_dir
echo "BT_IT_ST_HOME: [$BT_IT_ST_HOME]"

#source $proj_dir/env.csh
set PROJ_HOME = `echo $source_dir|sed "s?\(.*/$PROJ_NAME\).*?\1?"`

setenv TB_OUTDIR ./out/$source_cmd[3]

alias fm       "cd $BT_IT_ST_HOME/formal"
alias emu      "cd $BT_IT_ST_HOME/emulation"
alias sim      "cd $BT_IT_ST_HOME/sim"
alias cfg      "cd $BT_IT_ST_HOME/sim/cfg"
alias fl       "cd $BT_IT_ST_HOME/sim/filelist"
alias tb       "cd $BT_IT_ST_HOME/sim/tb"
alias sva      "cd $BT_IT_ST_HOME/sim/sva"
alias if       "cd $BT_IT_ST_HOME/sim/interface"
alias test     "cd $BT_IT_ST_HOME/sim/testcase"
alias btest    "cd $BT_IT_ST_HOME/sim/basetest"
alias tl       "cd $BT_IT_ST_HOME/sim/tlist"
alias drv      "cd $BT_IT_ST_HOME/sim/uvc/driver"
alias mon      "cd $BT_IT_ST_HOME/sim/uvc/monitor"
alias env      "cd $BT_IT_ST_HOME/sim/uvc/env"
alias rfm      "cd $BT_IT_ST_HOME/sim/uvc/rfm"
alias seq      "cd $BT_IT_ST_HOME/sim/uvc/sequence"
alias cov      "cd $BT_IT_ST_HOME/sim/cov"
alias dov      "cd $PROJ_HOME/verify/doc"
alias vplan    "cd $PROJ_HOME/verify/doc/vplan"

#design vip dir
#setenv DESIGNVIP_DIR /teamwork/vip/vendor/



echo "------------------------"
echo "Setup Done"
echo "outdir = $TB_OUTDIR"
echo "------------------------"
