-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Jan  6 23:31:41 2019
-- Host        : DESKTOP-UUQ2CPQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/felip/Desktop/pansharpening_spp/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_8/blk_mem_gen_8_sim_netlist.vhdl
-- Design      : blk_mem_gen_8
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end blk_mem_gen_8_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_85\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_86\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3EEE84163EFFFFFE3F0000003EFFF0DF3F0000003EEE84163F0000003F000000",
      INIT_01 => X"3F0000003EAAAAAB3F0000003F0000003F0000003F0000003F0000003F000000",
      INIT_02 => X"3F0000003EFFF0DF3EAAAAAB3AC686613EEE84163EFF3CC43EFFF0DF3EAAAAAB",
      INIT_03 => X"3F0000003F0000003F0000003F0000003F0000003F0000003F000000397226ED",
      INIT_04 => X"35B945893EFE8EB83F0000003BB8A3F83286628C3EFFFFE83F0000003F000000",
      INIT_05 => X"3F0000003F0000003EAAAAAB3F0000003F0000003F0000003F0000003F000000",
      INIT_06 => X"3F0000003543628B3EAAAAAB3F0000003EAA063B3F0000003EAAAAAB3F000000",
      INIT_07 => X"3F0000003EFFFED43EFFFED43EAAAAAB3795C9B63795C9B63EAAAAAB3D186DAC",
      INIT_08 => X"3F0000003F0000003EAAAAAB3ACE2F9F3EFFFFFE3F0000003F0000003F000000",
      INIT_09 => X"3D1832923EEE84163EFF3CC435B945893F0000003F0000003F0000003F000000",
      INIT_0A => X"3BB8A3F83EFFFDC93EFFFDC93F0000003F0000003F0000003EF679253EF67925",
      INIT_0B => X"3EFFFFE83F0000003F0000003F0000003F0000003F0000003F0000003EFF3CC4",
      INIT_0C => X"3F0000003F0000003D8BDF573F0000003F0000003F0000003EFE8EB83F000000",
      INIT_0D => X"3EF5F93C3371498B3EFFFFDC3EAAAAAB3F0000003F0000003EAAAAAB3F000000",
      INIT_0E => X"3EF679253F0000003EFF32223CA06C363EFF98E83543628B3286628C3370E887",
      INIT_0F => X"3EFFF0DF3371AADC3371AADC3EAAAAAB3F0000003F0000003F0000003F000000",
      INIT_10 => X"397226ED3EFFF0DF3D8BDF5735B945893F0000003EFFF0DF3EFFFFE83F000000",
      INIT_11 => X"3D8BDF573B433D263EFFFFE83F0000003EFFFFFE3F0000003EFFF0DF3F000000",
      INIT_12 => X"3EFFFDC93F0000003F0000003EF679253EF679253F0000003F0000003EF61994",
      INIT_13 => X"3F0000003EFF3CC43EFE8EB83EFFFDC93B433D263EFE8EB8380E08603F000000",
      INIT_14 => X"3F0000003EEE84163F0000003286628C3F0000003F0000003F0000003F000000",
      INIT_15 => X"3EFFFDC93EAAAAAB3F0000003F0000003F0000003F0000003F0000003F000000",
      INIT_16 => X"3ACDDCC93EF5F93C3232816C3ACE2FB13EFFFFDC3ACDDCC93EAA063B3F000000",
      INIT_17 => X"3EAAAAAB3F0000003EFF32223CA06C363EAA063B3EFF98E83543628B3286628C",
      INIT_18 => X"3EFF32243EFF98D23EFF32243EFF98D233E528A83F0000003EFFFED43EFFFED4",
      INIT_19 => X"3F0000003EAAAAAB3F0000003EAAAAAB35B8FAEE3EFFFFFE3371AADC3371AADC",
      INIT_1A => X"3F0000003F00000033E528A83EAAAAAB3EFF98EA3EFF98EA3EFFFFE8397226ED",
      INIT_1B => X"3EF679253B76A68F380E08603D186DAC3D186DAC3F0000003EFAE2F03F000000",
      INIT_1C => X"3EFFFFFE3ACDDCCB3EAAAAAB3286628B3EFFFFFE3EFFFFFE3ACDDCCB3EAAAAAB",
      INIT_1D => X"3543629C3ACE2FB23EFAE2F03EFFF0DF3F000000397226ED3286628B3EFFFFFE",
      INIT_1E => X"3F0000003F0000003F000000380E08603EF619943EFFFFE83F0000003F000000",
      INIT_1F => X"3F0000003EFFFFFF3F0000003F0000003EFFFDC93F0000003EEE84163F000000",
      INIT_20 => X"3ACE2FB23EAAAAAB3EFF98EA3EFF98EA3F0000003F0000003F0000003F000000",
      INIT_21 => X"353F7B8B3F0000003EFF98EA3CA3A07B3F0000003EFFFFE83EAAAAAB3ACE2FB2",
      INIT_22 => X"35B945893F0000003EFFFFFF3F0000003F0000003F0000003F0000003EFFFFF3",
      INIT_23 => X"3EFF98E93F0000003EFFFFE83EFFFFF33BB8A3213F0000003F0000003EFF98EA",
      INIT_24 => X"3F0000003F0000003F0000003F0000003F0000003EFF98E93F0000003F000000",
      INIT_25 => X"3F0000003EFE8D8F3F0000003F0000003ACE2FB23B433D263D8BDF573EFAE2FB",
      INIT_26 => X"3EEE84163CA3A0823EFF3CC43EEE84163EFAE2FB3BB8A3F83EFE8EB83F000000",
      INIT_27 => X"3BB8A3F83EFE8EB83794F1A53F0000003F0000003EFE8D8F3F0000003EFF3CC4",
      INIT_28 => X"3F0000003F0000003EFFFED53795C9B73F0000003EFE8EB83EFE8EB83BB8A3F8",
      INIT_29 => X"3F0000003EFFFED53F0000003F0000003F0000003F0000003EFE8EB83EFE8EB8",
      INIT_2A => X"3EFFFFE83F0000003F0000003F0000003F0000003EFFFFE83F0000003F000000",
      INIT_2B => X"3F00000035B945893F0000003F0000003F0000003F0000003F0000003286628C",
      INIT_2C => X"3F0000003EFFFED53F0000003F0000003F0000003F0000003F0000003EFFFED5",
      INIT_2D => X"3F0000003E9106363F0000003E18F0BE3E9106363EA860F639E592013EFFFFFE",
      INIT_2E => X"3E9106363F0000003795C9B73F0000003F0000003F0000003EFFE34E3EFFFFFE",
      INIT_2F => X"350082BE3F0000003EFE8C683D8B7BED3EA860F63F0000003EFFE34E33E528A8",
      INIT_30 => X"3EA860F63286628C3F0000003F0000003F0000003F0000003A69FA423B35F10E",
      INIT_31 => X"3C5BA1AC3F0000003F0000003F0000003F0000003F0000003794F0F93EEDDA91",
      INIT_32 => X"3F0000003F0000003F0000003F0000003F0000003F0000003EFE8C6833D4EA4C",
      INIT_33 => X"3F0000003F0000003794F0F93BB8A24B3EEDDA913EFFFDC93EEE841632859F7B",
      INIT_34 => X"3F0000003F0000003F0000003EFFFDC93EEE84163F0000003D8BDF57399911B9",
      INIT_35 => X"3F0000003EAA9DE93F0000003EAA9DE93F000000380E08603F0000003F000000",
      INIT_36 => X"3EFFFDC93EFF3CC4380E08603B433D263EAA9DE93F0000003F0000003F000000",
      INIT_37 => X"3EAAAAAB3F0000003F0000003F0000003F0000003F0000003EFFFDC93EFF3CC4",
      INIT_38 => X"3F0000003B433D263F0000003F0000003371AADE3EAAAAAB3371AADE3F000000",
      INIT_39 => X"3EAAAAAB3F0000003F0000003F0000003286628C3F0000003EAAAAAB3F000000",
      INIT_3A => X"3F0000003F0000003F0000003EFFFED53F000000337148713F0000003EFFE1BD",
      INIT_3B => X"3EEE8412328661EF3EFF3CC43EFFFDC93ACE2FB23EFFFFFE3F0000003EFF3CC4",
      INIT_3C => X"3EFFFED53F00000037958D6537958D643EFFE1BD3D8BDF553EFFFED53B433D26",
      INIT_3D => X"3EFF98E933E528A83F0000003EAAAAAB3F0000003F0000003795C9B73F000000",
      INIT_3E => X"3F0000003F0000003F0000003F0000003EEE841633D582083EFFFED5380E0860",
      INIT_3F => X"3EFFFFFE3F0000003EFF3CC43EAAAAAB3EFF97BF3EFF97BD3972189D3F000000",
      INIT_40 => X"3F000000328661EF3CA3A0823EEE84123795C9B73EFF3CC43EFFFDC93EFF98E9",
      INIT_41 => X"3EAAAAAB3EAAAAAB3EFF97BF3EFF97BD3972189D3F0000003F0000003F000000",
      INIT_42 => X"3ACE2EBF397226ED3EAAAAAB3D8BDF573EEE84163F0000003F0000003F000000",
      INIT_43 => X"3EFAE2FB3F0000003F0000003F0000003EFFF0DF3EAAAAAB3EAAAAAB3ACE2EC1",
      INIT_44 => X"3EAAAAAB3EAAAAAB3EFFFFE83368AC8E3BB8A3F83F0000003EFFFFE83EFAE2FB",
      INIT_45 => X"3F0000003F0000003EFAD4733EEE84163EF679253F00000035B945893EFFF0DF",
      INIT_46 => X"3F0000003F0000003F0000003F0000003F0000003D186DAC396D50FF3F000000",
      INIT_47 => X"3EFAD4733D8BDF573C9D576E3EFF98E83EFF98EA3285A0B23C9D576E3EFE8EB8",
      INIT_48 => X"3F0000003EAAAAAB3F0000003EAAAAAB3EF679253F0000003CA397083EEE8416",
      INIT_49 => X"3ACE2FB13ACE2FB23EFE8EB83543629C3C9D576E3EFF98E83EFF98EA3285A0B2",
      INIT_4A => X"3F0000003EFFE1BD3F0000003E55A4C13E55A4C13D3E79B03EFFFFF33EF13FCE",
      INIT_4B => X"3EFFFDC93F0000003285A0B23F0000003F0000003F0000003F0000003F000000",
      INIT_4C => X"376D12CF3F0000003972189D3ECA95E23ECA95E23972189D3ECA95E23ECA95E2",
      INIT_4D => X"3EAAAAAB3EFFFFF33EF13FCE3371498B3F0000003F0000003EFFE1BD376D12CF",
      INIT_4E => X"3F0000003F0000003285A0B23F0000003EAAAAAB3F000000333F3F02333F3F02",
      INIT_4F => X"3371A9C33EA2B61E372746413CA06C303D8296093306F0093B2A55CC380CC557",
      INIT_50 => X"3D3ED6463CA06C303EF5F932380398833B34ECF83E9B308A3E76F1E13EA2672D",
      INIT_51 => X"3F0000003F0000003D8B16D53B34ECF83391A6C13EF5F9323CA06C3033D44FFB",
      INIT_52 => X"3EAAAAAB3EAAAAAB3ECA969E3ECA969E3EAAAAAB3EFF98E93EFFFDC93F000000",
      INIT_53 => X"3EFE8EB83EFFC6A23EFF3CC43972189B3795C9B63EFFFED43F0000003ECA969E",
      INIT_54 => X"3EFFFED43F0000003F00000033E528A8380E08603BB8A3F83EEDD6BC3E4F4E39",
      INIT_55 => X"3EF619943C5B99193EFFFDC9336852573B4213703795C9083EFFFDA93795C9B6",
      INIT_56 => X"3EAA05B733C755373D8BDF563EAAA9AE3EAA05B73EA85A6337F719FB3B421370",
      INIT_57 => X"3E8EF11A3391A6C13E8EF0BC380E0725380E0725323280E23D8296093EFFFB90",
      INIT_58 => X"3306F0613EA2B61E3306F009353BBB9A3EF5F9323E9B77D13E2C67303E2C6730",
      INIT_59 => X"3E9B77D13E2C67303E2C67303E8EF11A3391A6C13E8EF0BC37AC84963EFF3CC0",
      INIT_5A => X"3F0000003F0000003EAAAAAB3ECA969E3ECA969E3EAAAAAB3F0000003F000000",
      INIT_5B => X"3F0000003E55A5883EAAAAAB3F0000003ACE2FB23F0000003F0000003F000000",
      INIT_5C => X"3ACDDCCB3EAAAAAB3ACDDCCB3EAAAAAB3EFF32243EAAAAAB3EFF32243F000000",
      INIT_5D => X"3EFFE1BC397226ED3EAAAAAB3972189B3EFFF0DF3F0000003EAAAAAB32332E10",
      INIT_5E => X"3F0000003EFE8EB839E578483EFFC6A23EAAAAAB3F0000003EAAAAAB39E57848",
      INIT_5F => X"3EFF320E3F0000003EFF320E3F0000003F0000003F0000003EAAAAAB3EAAAAAB",
      INIT_60 => X"3D8B79AE3ECA969E3EC493553F0000003F0000003EAAAAAB3371AADE333F3F02",
      INIT_61 => X"3F0000003F0000003EFFFFFE3EFFFDC93F0000003F0000003F0000003F000000",
      INIT_62 => X"3B4213703EF619943EFFE34E3EFFFDA939E592013F0000003EFFFED43EFFFFF3",
      INIT_63 => X"3EFDB79035007DBA3EDEAE373EFDB7903AC68661391F48753EFFFDC93EA85A63",
      INIT_64 => X"3D3603DA3E76F1E13EA2672D3EFF2FCE380E072533E528A53EFFFED43EDEAE37",
      INIT_65 => X"3B356D303D8AB4893E9B308A3D10D0BB3EA2672D3EAA52D33EFF3CC438033B82",
      INIT_66 => X"379550943EED2E2D3EEC868E3D3603DA3789036F3CA06C303AF8743F3EAA52D3",
      INIT_67 => X"3ACDDAE83EED2E2D3EEC868E3AED6B273EF5F932353BBB9A37B436A63B024922",
      INIT_68 => X"3F0000003F0000003D3657723EA37AC53EA37AC53E16BE873E16BE2537BD00AA",
      INIT_69 => X"3F0000003F0000003EAAAAAB3E55A5883E55A5883EFF98E93F000000380E0860",
      INIT_6A => X"3EFFFED43EAAAAAB3EFF32243EAAAAAB3EFF32243F0000003ECA969E3EAAAAAB",
      INIT_6B => X"3371AADE3F0000003BB8A3F83F0000003EFF3CC43EAAAAAB3EFFE1BC3EFFF0DF",
      INIT_6C => X"3EAAA3F03EAAA3F1397226ED3EAAA3F0392172773EFFF0DF3EAAAAAB3EAAAAAB",
      INIT_6D => X"35B8B08E3F0000003E55A5883ECA969E3ACDDCB93F0000003EAAAAAB3EFFF0DF",
      INIT_6E => X"3EFF3CC43CA3A0823D8BDF573B433D263EFAE2FB3ECA969E3E55A5883EC49355",
      INIT_6F => X"3EFE8EB83B35EE203795C9B63795C9B63EFE8EB83EEDD6BC3CF323B83EEE8416",
      INIT_70 => X"3F0000003543629C3F0000003EFFFFF33F0000003F0000003EFFFFFE3EFFFDC9",
      INIT_71 => X"33E31D82380E08603D1832923B433D263EFF98EA3F0000003EFF98EA3F000000",
      INIT_72 => X"3EEE84143EAAA9AE3B76A5CF33D5820937BD610C3EAA05B733E528A53EA85A63",
      INIT_73 => X"3EA37AC53EA37AC53E16BE873E16BE253EFFFB903EEE84143EAAA9AE3746F77F",
      INIT_74 => X"3E16BE8737B48E3F3E16BE253ACDDAE8338B2AE03EFF3CC03EA2B61E3D365772",
      INIT_75 => X"3F0000003F0000003F0000003F0000003E9B77D133E479E33CCA34373CCA3437",
      INIT_76 => X"3F0000003EAAAAAB3EAAAAAB3ACDDCCB32332E103ACDDCCB3F0000003F000000",
      INIT_77 => X"392172763EAAA3F1397226ED3EAAA3F03EAAA3F13EFFF0DF3F0000003B433D26",
      INIT_78 => X"3F0000003EAAAAAB3F0000003EAAAAAB3F0000003ECA969E3ACDDCB93EFFF0DF",
      INIT_79 => X"3803F6093F0000003F0000003F0000003F0000003EEE84163EFF3CC43EFAE2FB",
      INIT_7A => X"3EFFE34E3795C9083286628C3EFFFED43EFFFED43803F6093EFFFED43EFFFED4",
      INIT_7B => X"3371A9C33EFF3CC43ACE2FB23E76F1E13F0000003F0000003F0000003F000000",
      INIT_7C => X"379550943EFFFB903EFFFFFA3795C9B63370E6543EFFFB903EFFFFFA35007DBA",
      INIT_7D => X"3E76F1E13EFF2FCE380E072533E528A53B433D233B356D3038033B823EFFFED4",
      INIT_7E => X"3F0000003F0000003F0000003F0000003EAA52D3380398833B34ECF83E9B308A",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => douta(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_85\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_86\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end blk_mem_gen_8_blk_mem_gen_prim_width;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.blk_mem_gen_8_blk_mem_gen_prim_wrapper_init
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      dina(31 downto 0) => dina(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end blk_mem_gen_8_blk_mem_gen_generic_cstr;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.blk_mem_gen_8_blk_mem_gen_prim_width
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      dina(31 downto 0) => dina(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_top : entity is "blk_mem_gen_top";
end blk_mem_gen_8_blk_mem_gen_top;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_top is
begin
\valid.cstr\: entity work.blk_mem_gen_8_blk_mem_gen_generic_cstr
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      dina(31 downto 0) => dina(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end blk_mem_gen_8_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.blk_mem_gen_8_blk_mem_gen_top
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      dina(31 downto 0) => dina(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     2.95215 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_8.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_8.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1016;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1016;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1016;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 1016;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_gen_8_blk_mem_gen_v8_4_1 : entity is "yes";
end blk_mem_gen_8_blk_mem_gen_v8_4_1;

architecture STRUCTURE of blk_mem_gen_8_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.blk_mem_gen_8_blk_mem_gen_v8_4_1_synth
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      dina(31 downto 0) => dina(31 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_8 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blk_mem_gen_8 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_gen_8 : entity is "blk_mem_gen_8,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_gen_8 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_gen_8 : entity is "blk_mem_gen_v8_4_1,Vivado 2017.4";
end blk_mem_gen_8;

architecture STRUCTURE of blk_mem_gen_8 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.95215 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_8.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_gen_8.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1016;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1016;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1016;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1016;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.blk_mem_gen_8_blk_mem_gen_v8_4_1
     port map (
      addra(9 downto 0) => addra(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
