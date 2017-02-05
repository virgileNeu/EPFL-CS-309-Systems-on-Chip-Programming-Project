###############################################################################
# prsoc_ext_board_pinning.tcl
#
# BOARD         : DE0-Nano-SoC from Terasic
# Author        : Philemon Favrod
#                 Based on the work of Sahand Kashani-Akhavan
# Revision      : 1.0
# Creation date : May 12, 2016
#
# Syntax Rule : GROUP_NAME_N[bit]
#
# GROUP : specify a particular interface (ex: SDR_)
# NAME  : signal name (ex: CONFIG, D, ...)
# bit   : signal index
# _N    : to specify an active-low signal
#
# You can run this script from Quartus by observing the following steps:
# 1. Place this TCL script in your project directory
# 2. Open your project in Quartus
# 3. Go to the View > Utility Windows -> Tcl Console
# 4. In the Tcl Console type:
#        source prsoc_ext_board_pinning.tcl
#
# 5. The script will assign pins and return an "assignment made" message.
###############################################################################

set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CSEMA4U23C6
set_global_assignment -name DEVICE_FILTER_PACKAGE UFBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6

#============================================================
# ADC
#============================================================
set_location_assignment PIN_U9  -to ADC_CONVST
set_location_assignment PIN_V10 -to ADC_SCK
set_location_assignment PIN_AC4 -to ADC_SDI
set_location_assignment PIN_AD4 -to ADC_SDO

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CONVST
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SCK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SDI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SDO

#============================================================
# ARDUINO
#============================================================
set_location_assignment PIN_AG13 -to CAM_D[9]
set_location_assignment PIN_AG13 -to CAM_D_9
set_location_assignment PIN_AF13 -to CAM_D[8]
set_location_assignment PIN_AF13 -to CAM_D_8
set_location_assignment PIN_AG10 -to CAM_D[7]
set_location_assignment PIN_AG10 -to CAM_D_7
set_location_assignment PIN_AG9  -to CAM_D[6]
set_location_assignment PIN_AG9  -to CAM_D_6
set_location_assignment PIN_U14  -to CAM_D[5]
set_location_assignment PIN_U14  -to CAM_D_5
set_location_assignment PIN_U13  -to CAM_D[4]
set_location_assignment PIN_U13  -to CAM_D_4
set_location_assignment PIN_AG8  -to CAM_D[3]
set_location_assignment PIN_AG8  -to CAM_D_3
set_location_assignment PIN_AH8  -to CAM_D[2]
set_location_assignment PIN_AH8  -to CAM_D_2
set_location_assignment PIN_AF17 -to CAM_D[1]
set_location_assignment PIN_AF17 -to CAM_D_1
set_location_assignment PIN_AE15 -to CAM_D[0]
set_location_assignment PIN_AE15 -to CAM_D_0
set_location_assignment PIN_AF15 -to CAM_TH_SPI_CS_N
set_location_assignment PIN_AG16 -to CAM_TH_MOSI
set_location_assignment PIN_AH11 -to CAM_TH_MISO
set_location_assignment PIN_AH12 -to CAM_TH_CLK
set_location_assignment PIN_AH9  -to CAM_TH_I2C_SDA
set_location_assignment PIN_AG11 -to CAM_TH_I2C_SCL
set_location_assignment PIN_AH7  -to ARDUINO_RESET_N

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_9
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_8
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_D_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_SPI_CS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_I2C_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_TH_I2C_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ARDUINO_RESET_N

#============================================================
# CLOCK
#============================================================
set_location_assignment PIN_V11 -to FPGA_CLK1_50
set_location_assignment PIN_Y13 -to FPGA_CLK2_50
set_location_assignment PIN_E11 -to FPGA_CLK3_50

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_CLK1_50
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_CLK2_50
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_CLK3_50

#============================================================
# HPS
#============================================================
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_CONV_USB_N
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[0]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_0
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[1]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_1
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[2]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_2
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[3]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_3
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[4]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_4
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[5]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_5
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[6]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_6
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[7]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_7
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[8]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_8
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[9]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_9
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[10]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_10
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[11]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_11
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[12]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_12
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[13]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_13
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR[14]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ADDR_14
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA[0]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA_0
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA[1]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA_1
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA[2]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_BA_2
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_CAS_N
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_CKE
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_CK_N
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_CK_P
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_CS_N
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM[0]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM_0
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM[1]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM_1
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM[2]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM_2
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM[3]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DM_3
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[0]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_0
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[1]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_1
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[2]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_2
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[3]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_3
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[4]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_4
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[5]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_5
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[6]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_6
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[7]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_7
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[8]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_8
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[9]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_9
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[10]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_10
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[11]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_11
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[12]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_12
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[13]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_13
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[14]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_14
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[15]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_15
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[16]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_16
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[17]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_17
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[18]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_18
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[19]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_19
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[20]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_20
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[21]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_21
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[22]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_22
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[23]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_23
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[24]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_24
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[25]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_25
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[26]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_26
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[27]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_27
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[28]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_28
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[29]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_29
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[30]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_30
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ[31]
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_DQ_31
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N_0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N_1
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N_2
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N[3]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_N_3
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P_0
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P_1
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P_2
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P[3]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.5-V SSTL CLASS I" -to HPS_DDR3_DQS_P_3
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_ODT
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_RAS_N
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_RESET_N
set_instance_assignment -name IO_STANDARD "1.5 V" -to HPS_DDR3_RZQ
set_instance_assignment -name IO_STANDARD "SSTL-15 CLASS I" -to HPS_DDR3_WE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_GTX_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_INT_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_MDC
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_MDIO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DATA_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_RX_DV
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_DATA_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_ENET_TX_EN
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_GSENSOR_INT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_I2C0_SCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_I2C0_SDAT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_I2C1_SCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_I2C1_SDAT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_KEY_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_LED
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_LTC_GPIO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_CMD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SD_DATA_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SPIM_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SPIM_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SPIM_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_SPIM_SS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_UART_RX
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_UART_TX
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_CLKOUT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DATA_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_DIR
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_NXT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HPS_USB_STP

#============================================================
# KEY
#============================================================
set_location_assignment PIN_AH17 -to KEY[0]
set_location_assignment PIN_AH17 -to KEY_0
set_location_assignment PIN_AH16 -to KEY[1]
set_location_assignment PIN_AH16 -to KEY_1

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY_1

#============================================================
# LED
#============================================================
set_location_assignment PIN_W15  -to LED[0]
set_location_assignment PIN_W15  -to LED_0
set_location_assignment PIN_AA24 -to LED[1]
set_location_assignment PIN_AA24 -to LED_1
set_location_assignment PIN_V16  -to LED[2]
set_location_assignment PIN_V16  -to LED_2
set_location_assignment PIN_V15  -to LED[3]
set_location_assignment PIN_V15  -to LED_3
set_location_assignment PIN_AF26 -to LED[4]
set_location_assignment PIN_AF26 -to LED_4
set_location_assignment PIN_AE26 -to LED[5]
set_location_assignment PIN_AE26 -to LED_5
set_location_assignment PIN_Y16  -to LED[6]
set_location_assignment PIN_Y16  -to LED_6
set_location_assignment PIN_AA23 -to LED[7]
set_location_assignment PIN_AA23 -to LED_7

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_7

#============================================================
# SW
#============================================================
set_location_assignment PIN_L10 -to SW[0]
set_location_assignment PIN_L10 -to SW_0
set_location_assignment PIN_L9  -to SW[1]
set_location_assignment PIN_L9  -to SW_1
set_location_assignment PIN_H6  -to SW[2]
set_location_assignment PIN_H6  -to SW_2
set_location_assignment PIN_H5  -to SW[3]
set_location_assignment PIN_H5  -to SW_3

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW_3

#============================================================
# GPIO_0, GPIO_0 connect to GPIO Default
#============================================================
set_location_assignment PIN_V12  -to PIO_INT_N
set_location_assignment PIN_AF7  -to PIR_OUT
set_location_assignment PIN_W12  -to CAM_PAL_VGA_SDA
set_location_assignment PIN_AF8  -to CAM_PAL_VGA_SCL
set_location_assignment PIN_Y8   -to PAL_VD_HSO
set_location_assignment PIN_AB4  -to PAL_VD_VSO
set_location_assignment PIN_W8   -to PAL_VD_VD[7]
set_location_assignment PIN_W8   -to PAL_VD_VD_7
set_location_assignment PIN_Y4   -to PAL_VD_VD[6]
set_location_assignment PIN_Y4   -to PAL_VD_VD_6
set_location_assignment PIN_Y5   -to PAL_VD_VD[5]
set_location_assignment PIN_Y5   -to PAL_VD_VD_5
set_location_assignment PIN_U11  -to BOARD_ID
set_location_assignment PIN_T8   -to PAL_VD_VD[3]
set_location_assignment PIN_T8   -to PAL_VD_VD_3
set_location_assignment PIN_T12  -to PAL_VD_VD[4]
set_location_assignment PIN_T12  -to PAL_VD_VD_4
set_location_assignment PIN_AH5  -to PAL_VD_VD[1]
set_location_assignment PIN_AH5  -to PAL_VD_VD_1
set_location_assignment PIN_AH6  -to PAL_VD_VD[2]
set_location_assignment PIN_AH6  -to PAL_VD_VD_2
set_location_assignment PIN_AH4  -to PAL_VD_CLKO
set_location_assignment PIN_AG5  -to PAL_VD_VD[0]
set_location_assignment PIN_AG5  -to PAL_VD_VD_0
set_location_assignment PIN_AH3  -to SERVO_0
set_location_assignment PIN_AH2  -to CAM_PIX_CLK
set_location_assignment PIN_AF4  -to SERVO_1
set_location_assignment PIN_AG6  -to CAM_LV
set_location_assignment PIN_AF5  -to FROM_ESP_TXD
set_location_assignment PIN_AE4  -to CAM_FV
set_location_assignment PIN_T13  -to TO_ESP_RXD
set_location_assignment PIN_T11  -to CAM_SYS_CLK
set_location_assignment PIN_AE7  -to SPI_MISO
set_location_assignment PIN_AF6  -to SPI_ENA_N
set_location_assignment PIN_AF9  -to J0_SPI_CS_N
set_location_assignment PIN_AE8  -to SPI_CLK
set_location_assignment PIN_AD10 -to J0_SPI_MOSI
set_location_assignment PIN_AE9  -to SPI_MOSI
set_location_assignment PIN_AD11 -to J0_SPI_MISO
set_location_assignment PIN_AF10 -to SPI_DAT
set_location_assignment PIN_AD12 -to J0_SPI_CLK
set_location_assignment PIN_AE11 -to PIO_SCL
set_location_assignment PIN_AF11 -to LED_BGR
set_location_assignment PIN_AE12 -to PIO_SDA

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PIO_INT_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PIR_OUT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_PAL_VGA_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_PAL_VGA_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_HSO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VSO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BOARD_ID
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_CLKO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PAL_VD_VD_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SERVO_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_PIX_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SERVO_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_LV
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FROM_ESP_TXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_FV
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TO_ESP_RXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CAM_SYS_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SPI_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SPI_ENA_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to J0_SPI_CS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SPI_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to J0_SPI_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SPI_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to J0_SPI_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SPI_DAT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to J0_SPI_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PIO_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED_BGR
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PIO_SDA

#============================================================
# GPIO_1, GPIO_1 connect to GPIO Default
#============================================================
set_location_assignment PIN_Y15  -to LCD_PIN_DAV_N
set_location_assignment PIN_AG28 -to GPIO_1[1]
set_location_assignment PIN_AG28 -to TS_SCL
set_location_assignment PIN_AA15 -to GPIO_1[2]
set_location_assignment PIN_AA15 -to RESET_N
set_location_assignment PIN_AH27 -to GPIO_1[3]
set_location_assignment PIN_AH27 -to TS_SDA
set_location_assignment PIN_AG26 -to GPIO_1[4]
set_location_assignment PIN_AG26 -to LCD_DE
set_location_assignment PIN_AH24 -to GPIO_1[5]
set_location_assignment PIN_AH24 -to BLT_TXD
set_location_assignment PIN_AF23 -to GPIO_1[6]
set_location_assignment PIN_AF23 -to LCD_DISPLAY_EN
set_location_assignment PIN_AE22 -to GPIO_1[7]
set_location_assignment PIN_AE22 -to BLT_RXD
set_location_assignment PIN_AF21 -to GPIO_1[8]
set_location_assignment PIN_AF21 -to VIDEO_HSYNC
set_location_assignment PIN_AG20 -to GPIO_1[9]
set_location_assignment PIN_AG20 -to BOARD_ID
set_location_assignment PIN_AG19 -to GPIO_1[10]
set_location_assignment PIN_AG19 -to VIDEO_VSYNC
set_location_assignment PIN_AF20 -to GPIO_1[11]
set_location_assignment PIN_AF20 -to VIDEO_CLK
set_location_assignment PIN_AC23 -to VIDEO_B[7]
set_location_assignment PIN_AC23 -to VIDEO_B_7
set_location_assignment PIN_AG18 -to VIDEO_B[6]
set_location_assignment PIN_AG18 -to VIDEO_B_6
set_location_assignment PIN_AH26 -to VIDEO_B[5]
set_location_assignment PIN_AH26 -to VIDEO_B_5
set_location_assignment PIN_AA19 -to VIDEO_B[4]
set_location_assignment PIN_AA19 -to VIDEO_B_4
set_location_assignment PIN_AG24 -to VIDEO_B[3]
set_location_assignment PIN_AG24 -to VIDEO_B_3
set_location_assignment PIN_AF25 -to VIDEO_B[2]
set_location_assignment PIN_AF25 -to VIDEO_B_2
set_location_assignment PIN_AH23 -to VIDEO_B[1]
set_location_assignment PIN_AH23 -to VIDEO_B_1
set_location_assignment PIN_AG23 -to VIDEO_B[0]
set_location_assignment PIN_AG23 -to VIDEO_B_0
set_location_assignment PIN_AE19 -to VIDEO_G[7]
set_location_assignment PIN_AE19 -to VIDEO_G_7
set_location_assignment PIN_AF18 -to VIDEO_G[6]
set_location_assignment PIN_AF18 -to VIDEO_G_6
set_location_assignment PIN_AD19 -to VIDEO_G[5]
set_location_assignment PIN_AD19 -to VIDEO_G_5
set_location_assignment PIN_AE20 -to VIDEO_G[4]
set_location_assignment PIN_AE20 -to VIDEO_G_4
set_location_assignment PIN_AE24 -to VIDEO_G[3]
set_location_assignment PIN_AE24 -to VIDEO_G_3
set_location_assignment PIN_AD20 -to VIDEO_G[2]
set_location_assignment PIN_AD20 -to VIDEO_G_2
set_location_assignment PIN_AF22 -to VIDEO_G[1]
set_location_assignment PIN_AF22 -to VIDEO_G_1
set_location_assignment PIN_AH22 -to VIDEO_G[0]
set_location_assignment PIN_AH22 -to VIDEO_G_0
set_location_assignment PIN_AH19 -to VIDEO_R[7]
set_location_assignment PIN_AH19 -to VIDEO_R_7
set_location_assignment PIN_AH21 -to VIDEO_R[6]
set_location_assignment PIN_AH21 -to VIDEO_R_6
set_location_assignment PIN_AG21 -to VIDEO_R[5]
set_location_assignment PIN_AG21 -to VIDEO_R_5
set_location_assignment PIN_AH18 -to VIDEO_R[4]
set_location_assignment PIN_AH18 -to VIDEO_R_4
set_location_assignment PIN_AD23 -to VIDEO_R[3]
set_location_assignment PIN_AD23 -to VIDEO_R_3
set_location_assignment PIN_AE23 -to VIDEO_R[2]
set_location_assignment PIN_AE23 -to VIDEO_R_2
set_location_assignment PIN_AA18 -to VIDEO_R[1]
set_location_assignment PIN_AA18 -to VIDEO_R_1
set_location_assignment PIN_AC22 -to VIDEO_R[0]
set_location_assignment PIN_AC22 -to VIDEO_R_0

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_PIN_DAV_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TS_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to RESET_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TS_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BLT_TXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DISPLAY_EN
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BLT_RXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_HSYNC
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to BOARD_ID
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_VSYNC
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_B_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_G_0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VIDEO_R_0


