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
ExecStep $xv_path/bin/xsim core_tb_behav -key {Behavioral:sim_1:Functional:core_tb} -tclbatch core_tb.tcl -log simulate.log
