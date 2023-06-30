-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:video_out:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_video_out_0_0 IS
  PORT (
    clk250 : IN STD_LOGIC;
    R : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    G : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clk25 : OUT STD_LOGIC;
    video_en : OUT STD_LOGIC;
    HDMI_data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    HDMI_data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    HDMI_clk_n : OUT STD_LOGIC;
    HDMI_clk_p : OUT STD_LOGIC;
    v_sync : OUT STD_LOGIC;
    h_sync : OUT STD_LOGIC;
    vga_r : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    vga_g : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    vga_b : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END design_1_video_out_0_0;

ARCHITECTURE design_1_video_out_0_0_arch OF design_1_video_out_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_video_out_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT video_out IS
    PORT (
      clk250 : IN STD_LOGIC;
      R : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      G : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      clk25 : OUT STD_LOGIC;
      video_en : OUT STD_LOGIC;
      HDMI_data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      HDMI_data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      HDMI_clk_n : OUT STD_LOGIC;
      HDMI_clk_p : OUT STD_LOGIC;
      v_sync : OUT STD_LOGIC;
      h_sync : OUT STD_LOGIC;
      vga_r : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      vga_g : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      vga_b : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT video_out;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF HDMI_clk_n: SIGNAL IS "XIL_INTERFACENAME HDMI_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_n, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF HDMI_clk_n: SIGNAL IS "xilinx.com:signal:clock:1.0 HDMI_clk_n CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF HDMI_clk_p: SIGNAL IS "XIL_INTERFACENAME HDMI_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_p, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF HDMI_clk_p: SIGNAL IS "xilinx.com:signal:clock:1.0 HDMI_clk_p CLK";
BEGIN
  U0 : video_out
    PORT MAP (
      clk250 => clk250,
      R => R,
      G => G,
      B => B,
      clk25 => clk25,
      video_en => video_en,
      HDMI_data_n => HDMI_data_n,
      HDMI_data_p => HDMI_data_p,
      HDMI_clk_n => HDMI_clk_n,
      HDMI_clk_p => HDMI_clk_p,
      v_sync => v_sync,
      h_sync => h_sync,
      vga_r => vga_r,
      vga_g => vga_g,
      vga_b => vga_b
    );
END design_1_video_out_0_0_arch;
