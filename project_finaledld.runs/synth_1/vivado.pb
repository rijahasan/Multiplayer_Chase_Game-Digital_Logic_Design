
t
Command: %s
53*	vivadotcl2C
/synth_design -top vga_top -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
49802default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1028.547 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
vga_top2default:default2
 2default:default2Y
CZ:/project_finaledld/project_finaledld.srcs/sources_1/new/vga_top.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2Y
CZ:/project_finaledld/project_finaledld.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter div_value bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
12default:default2
12default:default2Y
CZ:/project_finaledld/project_finaledld.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	h_counter2default:default2
 2default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/h_counter.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	h_counter2default:default2
 2default:default2
22default:default2
12default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/h_counter.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	v_counter2default:default2
 2default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/v_counter.v2default:default2
222default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	v_counter2default:default2
 2default:default2
32default:default2
12default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/v_counter.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2Z
DZ:/project_finaledld/project_finaledld.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter HD bound to: 640 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter HF bound to: 16 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter HB bound to: 48 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter HR bound to: 96 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter VD bound to: 480 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter VF bound to: 10 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter VB bound to: 33 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter VR bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
42default:default2
12default:default2Z
DZ:/project_finaledld/project_finaledld.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	pixel_gen2default:default2
 2default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/pixel_gen.v2default:default2
222default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	pixel_gen2default:default2
 2default:default2
52default:default2
12default:default2[
EZ:/project_finaledld/project_finaledld.srcs/sources_1/new/pixel_gen.v2default:default2
222default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_top2default:default2
 2default:default2
62default:default2
12default:default2Y
CZ:/project_finaledld/project_finaledld.srcs/sources_1/new/vga_top.v2default:default2
232default:default8@Z8-6155h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1028.547 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1028.547 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1028.547 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0332default:default2
1028.5472default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2V
@Z:/project_finaledld/project_finaledld.srcs/constrs_1/new/DF.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2V
@Z:/project_finaledld/project_finaledld.srcs/constrs_1/new/DF.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
@Z:/project_finaledld/project_finaledld.srcs/constrs_1/new/DF.xdc2default:default2-
.Xil/vga_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1062.3752default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1062.3752default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1062.375 ; gain = 33.828
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1062.375 ; gain = 33.828
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1062.375 ; gain = 33.828
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1062.375 ; gain = 33.828
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   13 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   12 Bit       Adders := 54    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 