#!/bin/sh -f
xv_path="/afs/ece/support/xilinx/xilinx.release/Vivado"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim core_tb_behav -key {Behavioral:sim_2:Functional:core_tb} -tclbatch core_tb.tcl -view /afs/ece.cmu.edu/usr/rmrobert/Private/18545/Atari7800/core/tb/core_1/core_tb_behav.wcfg -log simulate.log
