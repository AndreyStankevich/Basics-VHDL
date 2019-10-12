--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: BUTTON_LED_map.vhd
-- /___/   /\     Timestamp: Mon Sep 16 13:08:37 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf BUTTON_LED.pcf -rpw 100 -tpw 0 -ar Structure -tm BUTTON_LED -w -dir netgen/map -ofmt vhdl -sim BUTTON_LED_map.ncd BUTTON_LED_map.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: BUTTON_LED_map.ncd
-- Output file	: E:\POCP_1.1\netgen\map\BUTTON_LED_map.vhd
-- # of Entities	: 1
-- Design Name	: BUTTON_LED
-- Xilinx	: E:\Xilinxs\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity BUTTON_LED is
  port (
    KEY1_in : in STD_LOGIC := 'X'; 
    KEY2_in : in STD_LOGIC := 'X'; 
    KEY3_in : in STD_LOGIC := 'X'; 
    KEY4_in : in STD_LOGIC := 'X'; 
    LED1_out : out STD_LOGIC; 
    LED2_out : out STD_LOGIC; 
    LED3_out : out STD_LOGIC; 
    LED4_out : out STD_LOGIC 
  );
end BUTTON_LED;

architecture Structure of BUTTON_LED is
  signal LED3_out_OBUF_28 : STD_LOGIC; 
  signal LED4_out_OBUF_29 : STD_LOGIC; 
  signal LED1_out_OBUF_30 : STD_LOGIC; 
  signal LED2_out_OBUF_31 : STD_LOGIC; 
  signal ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal KEY1_in_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal KEY4_in_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal KEY3_in_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
begin
  ProtoComp1_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      O => ProtoComp1_INTERMDISABLE_GND_0
    );
  KEY2_in_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp1_INTERMDISABLE_GND_0,
      O => LED2_out_OBUF_31,
      I => KEY2_in,
      TPWRGT => '1'
    );
  ProtoComp1_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => KEY1_in_ProtoComp1_INTERMDISABLE_GND_0
    );
  KEY1_in_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => KEY1_in_ProtoComp1_INTERMDISABLE_GND_0,
      O => LED1_out_OBUF_30,
      I => KEY1_in,
      TPWRGT => '1'
    );
  ProtoComp1_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => KEY4_in_ProtoComp1_INTERMDISABLE_GND_0
    );
  KEY4_in_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => KEY4_in_ProtoComp1_INTERMDISABLE_GND_0,
      O => LED4_out_OBUF_29,
      I => KEY4_in,
      TPWRGT => '1'
    );
  LED2_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      I => LED2_out_OBUF_31,
      O => LED2_out
    );
  LED4_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      I => LED4_out_OBUF_29,
      O => LED4_out
    );
  LED1_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      I => LED1_out_OBUF_30,
      O => LED1_out
    );
  ProtoComp1_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      O => KEY3_in_ProtoComp1_INTERMDISABLE_GND_0
    );
  KEY3_in_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => KEY3_in_ProtoComp1_INTERMDISABLE_GND_0,
      O => LED3_out_OBUF_28,
      I => KEY3_in,
      TPWRGT => '1'
    );
  LED3_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      I => LED3_out_OBUF_28,
      O => LED3_out
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

