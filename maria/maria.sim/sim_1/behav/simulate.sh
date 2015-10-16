#!/bin/sh -f
######################################################################
#
# File name : simulate.sh
# Created on: Thu Oct 15 23:07:56 EDT 2015
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################

# installation path setting
bin_path="/afs/ece.cmu.edu/support/synopsys/synopsys/share/image/usr/local/synopsys/vcs-mx_vF-2011.12-SP1/bin"

# set tb_simv command line args
tb_simv_opts="-ucli -licqueue -l simulate.log"

# run simulation
./tb_simv -gui $tb_simv_opts -do tb_simulate.do
