defmodule IntermodalContainers.ContainerCode.TypeCodes do
  @moduledoc false

  alias IntermodalContainers.ContainerCode.TypeCode

  @gp_designation "General purpose container without ventilation"
  @vh_designation "General purpose container with ventilation"
  @bu_designation "Dry bulk container--Nonpressurized, box type"
  @bk_designation "Dry bulk container--Pressurized"
  @sn_designation "Named cargo container"
  @re_designation "Thermal container--Refrigerated"
  @rt_designation "Thermal container--Refigerated and heated"
  @rs_designation "Thermal container--Seld-powered refigerated/heated"
  @hr_designation "Thermal container--Refigerated and/or heated with removable equipment"
  @hi_designation "Thermal container--Insulated"
  @ut_designation "Open-top container"
  @pl_designation "Platform (container)--Platform-based containers with incomplete superstructure."
  @pf_designation "Platform (container)--Platform-based containers with incomplete superstructure. Fixed."
  @pc_designation "Platform (container)--Platform-based containers with incomplete superstructure. Folding (collapsible)"
  @ps_designation "Platform (container)--Platform-based containers with complete super-structure"
  @tn_designation "Tank container--For nondangerous liquids"
  @td_designation "Tank container--For dangerous liquids"
  @tg_designation "Tank container--For gases"
  @as_designation "Air/surface container"

  @all [
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP"},
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G0"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G1"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G2"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G3"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G4"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G4"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G5"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G6"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G7"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G8"
    },
    %TypeCode{
      code: "G",
      designation: @gp_designation,
      group_code: "GP",
      detailed_type_code: "G9"
    },
    #
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH"},
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V0"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V1"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V2"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V3"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V4"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V5"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V6"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V7"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V8"
    },
    %TypeCode{
      code: "V",
      designation: @vh_designation,
      group_code: "VH",
      detailed_type_code: "V9"
    },
    #
    %TypeCode{code: "B", designation: @bu_designation, group_code: "BU"},
    %TypeCode{
      code: "B",
      designation: @bu_designation,
      group_code: "BU",
      detailed_type_code: "B0"
    },
    %TypeCode{
      code: "B",
      designation: @bu_designation,
      group_code: "BU",
      detailed_type_code: "B1"
    },
    %TypeCode{
      code: "B",
      designation: @bu_designation,
      group_code: "BU",
      detailed_type_code: "B2"
    },
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK"},
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B3"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B4"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B5"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B6"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B7"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B8"
    },
    %TypeCode{
      code: "B",
      designation: @bk_designation,
      group_code: "BK",
      detailed_type_code: "B9"
    },
    #
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN"},
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S0"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S1"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S2"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S3"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S4"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S5"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S6"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S7"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S8"
    },
    %TypeCode{
      code: "S",
      designation: @sn_designation,
      group_code: "SN",
      detailed_type_code: "S9"
    },
    #
    %TypeCode{code: "R", designation: @re_designation, group_code: "RE"},
    %TypeCode{
      code: "R",
      designation: @re_designation,
      group_code: "RE",
      detailed_type_code: "R0"
    },
    %TypeCode{code: "R", designation: @rt_designation, group_code: "RT"},
    %TypeCode{
      code: "R",
      designation: @rt_designation,
      group_code: "RT",
      detailed_type_code: "R1"
    },
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS"},
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R2"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R3"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R4"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R5"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R6"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R7"
    },
    %TypeCode{
      code: "R",
      designation: @rs_designation,
      group_code: "RS",
      detailed_type_code: "R8"
    },
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R9"},
    #
    %TypeCode{
      code: "H",
      designation: @hr_designation,
      group_code: "HR"
    },
    %TypeCode{
      code: "H",
      designation: @hr_designation,
      group_code: "HR",
      detailed_type_code: "H0"
    },
    %TypeCode{
      code: "H",
      designation: @hr_designation,
      group_code: "HR",
      detailed_type_code: "H1"
    },
    %TypeCode{
      code: "H",
      designation: @hr_designation,
      group_code: "HR",
      detailed_type_code: "H3"
    },
    %TypeCode{
      code: "H",
      designation: @hr_designation,
      group_code: "HR",
      detailed_type_code: "H4"
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
      detailed_type_code: "H5"
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
      detailed_type_code: "H6"
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
      detailed_type_code: "H7"
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
      detailed_type_code: "H8"
    },
    %TypeCode{
      code: "H",
      designation: @hi_designation,
      group_code: "HI",
      detailed_type_code: "H9"
    },
    #
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U0"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U1"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U2"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U3"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U4"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U5"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U6"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U7"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U8"
    },
    %TypeCode{
      code: "U",
      designation: @ut_designation,
      group_code: "UT",
      detailed_type_code: "U9"
    },
    #
    %TypeCode{
      code: "P",
      designation: @pl_designation,
      group_code: "PL",
    },
    %TypeCode{
      code: "P",
      designation: @pl_designation,
      group_code: "PL",
      detailed_type_code: "P0"
    },
    %TypeCode{
      code: "P",
      designation: @pf_designation,
      group_code: "PF",
    },
    %TypeCode{
      code: "P",
      designation: @pf_designation,
      group_code: "PF",
      detailed_type_code: "P1"
    },
    %TypeCode{
      code: "P",
      designation: @pf_designation,
      group_code: "PF",
      detailed_type_code: "P2"
    },
    %TypeCode{
      code: "P",
      designation: @pc_designation,
      group_code: "PC",
    },
    %TypeCode{
      code: "P",
      designation: @pc_designation,
      group_code: "PC",
      detailed_type_code: "P3"
    },
    %TypeCode{
      code: "P",
      designation: @pc_designation,
      group_code: "PC",
      detailed_type_code: "P4"
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
      detailed_type_code: "P5"
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
      detailed_type_code: "P6"
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
      detailed_type_code: "P7"
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
      detailed_type_code: "P8"
    },
    %TypeCode{
      code: "P",
      designation: @ps_designation,
      group_code: "PS",
      detailed_type_code: "P9"
    },
    #
    %TypeCode{
      code: "T",
      designation: @tn_designation,
      group_code: "TN"
    },
    %TypeCode{
      code: "T",
      designation: @tn_designation,
      group_code: "TN",
      detailed_type_code: "T0"
    },
    %TypeCode{
      code: "T",
      designation: @tn_designation,
      group_code: "TN",
      detailed_type_code: "T1"
    },
    %TypeCode{
      code: "T",
      designation: @tn_designation,
      group_code: "TN",
      detailed_type_code: "T2"
    },
    %TypeCode{
      code: "T",
      designation: @td_designation,
      group_code: "TD",
    },
    %TypeCode{
      code: "T",
      designation: @td_designation,
      group_code: "TD",
      detailed_type_code: "T3"
    },
    %TypeCode{
      code: "T",
      designation: @td_designation,
      group_code: "TD",
      detailed_type_code: "T4"
    },
    %TypeCode{
      code: "T",
      designation: @td_designation,
      group_code: "TD",
      detailed_type_code: "T5"
    },
    %TypeCode{
      code: "T",
      designation: @td_designation,
      group_code: "TD",
      detailed_type_code: "T6"
    },
    %TypeCode{
      code: "T",
      designation: @tg_designation,
      group_code: "TG"
    },
    %TypeCode{
      code: "T",
      designation: @tg_designation,
      group_code: "TG",
      detailed_type_code: "T7"
    },
    %TypeCode{
      code: "T",
      designation: @tg_designation,
      group_code: "TG",
      detailed_type_code: "T8"
    },
    %TypeCode{
      code: "T",
      designation: @tg_designation,
      group_code: "TG",
      detailed_type_code: "T9"
    },
    #
    %TypeCode{
      code: "A",
      designation: @as_designation,
      group_code: "AS",
      detailed_type_code: "A0"
    }
  ]

  @map @all |> Map.new(fn c -> {TypeCode.most_specific_code(c), c} end)

  def get(code), do: Map.get(@map, code)
end
