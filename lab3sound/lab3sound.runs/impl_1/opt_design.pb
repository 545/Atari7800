
L
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px
k
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px
O

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px
M
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px
R
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px
a
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.16 ; elapsed = 00:00:00.16 . Memory (MB): peak = 1338.035 ; gain = 12.027 ; free physical = 1397 ; free virtual = 145952default:defaulth px
B
%Done setting XDC timing constraints.
35*timingZ38-35h px
^

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px
f

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
H
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px
9
'Phase 1 Retarget | Checksum: 12301ec7a
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.15 . Memory (MB): peak = 1828.559 ; gain = 0.000 ; free physical = 1062 ; free virtual = 142612default:defaulth px
r

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
H
Eliminated %s cells.
10*opt2
1042default:defaultZ31-10h px
E
3Phase 2 Constant Propagation | Checksum: 1c9020fce
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.30 ; elapsed = 00:00:00.29 . Memory (MB): peak = 1828.559 ; gain = 0.000 ; free physical = 1061 ; free virtual = 142602default:defaulth px
c

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px
S
 Eliminated %s unconnected nets.
12*opt2
4712default:defaultZ31-12h px
d
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
72default:defaultZ31-140h px
S
!Eliminated %s unconnected cells.
11*opt2
282default:defaultZ31-11h px
6
$Phase 3 Sweep | Checksum: 187d00c03
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.65 ; elapsed = 00:00:00.64 . Memory (MB): peak = 1828.559 ; gain = 0.000 ; free physical = 1061 ; free virtual = 142602default:defaulth px
^

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 1828.559 ; gain = 0.000 ; free physical = 1061 ; free virtual = 142602default:defaulth px
G
5Ending Logic Optimization Task | Checksum: 187d00c03
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.66 ; elapsed = 00:00:00.65 . Memory (MB): peak = 1828.559 ; gain = 0.000 ; free physical = 1061 ; free virtual = 142602default:defaulth px
>
,Implement Debug Cores | Checksum: 1e0e9a3d4
*commonh px
;
)Logic Optimization | Checksum: 1e0e9a3d4
*commonh px
^

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px
p
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
3.122default:defaultZ34-132h px
:
Applying IDT optimizations ...
9*pwroptZ34-9h px
<
Applying ODC optimizations ...
10*pwroptZ34-10h px


*pwropth px
b

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
1392default:defaultZ34-162h px
a
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
1392default:default2
2782default:defaultZ34-65h px
e
1Number of Flops added for Enable Generation: %s

23*pwropt2
22default:defaultZ34-23h px
K
9Ending PowerOpt Patch Enables Task | Checksum: 168291ee0
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.25 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2034.449 ; gain = 0.000 ; free physical = 783 ; free virtual = 139822default:defaulth px
G
5Ending Power Optimization Task | Checksum: 168291ee0
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2034.449 ; gain = 205.891 ; free physical = 783 ; free virtual = 139822default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px
Y
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:232default:default2
00:00:232default:default2
2034.4492default:default2
716.4452default:default2
7832default:default2
139822default:defaultZ17-722h px
A
Writing placer database...
1603*designutilsZ20-1893h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.292default:default2
00:00:00.142default:default2
2066.4652default:default2
0.0002default:default2
7812default:default2
139842default:defaultZ17-722h px
M
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px
�
#The results of DRC are in file %s.
168*coretcl2�
k/afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/lab3sound/lab3sound.runs/impl_1/adau1761_test_drc_opted.rptk/afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/lab3sound/lab3sound.runs/impl_1/adau1761_test_drc_opted.rpt2default:default8Z2-168h px


End Record