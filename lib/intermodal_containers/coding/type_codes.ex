defmodule IntermodalContainers.Coding.TypeCodes do
  alias IntermodalContainers.Characteristics.TypeCode

  @gp_designation "General purpose container without ventilation"
  @vh_designation ""
  @bu_designation ""
  @bk_designation ""
  @sn_designation ""
  @re_designation ""
  @rt_designation ""
  @rs_designation ""

  @all [
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G0"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G1"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G2"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G3"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G4"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G4"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G5"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G6"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G7"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G8"},
    %TypeCode{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G9"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V0"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V1"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V2"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V3"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V4"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V5"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V6"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V7"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V8"},
    %TypeCode{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V9"},
    %TypeCode{code: "B", designation: @bu_designation, group_code: "BU"},
    %TypeCode{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B0"},
    %TypeCode{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B1"},
    %TypeCode{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B2"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B3"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B4"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B5"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B6"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B7"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B8"},
    %TypeCode{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B9"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S0"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S1"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S2"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S3"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S4"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S5"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S6"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S7"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S8"},
    %TypeCode{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S9"},
    %TypeCode{code: "R", designation: @re_designation, group_code: "RE"},
    %TypeCode{code: "R", designation: @re_designation, group_code: "RE", detailed_type_code: "R0"},
    %TypeCode{code: "R", designation: @rt_designation, group_code: "RT"},
    %TypeCode{code: "R", designation: @rt_designation, group_code: "RT", detailed_type_code: "R1"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R2"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R3"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R4"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R5"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R6"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R7"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R8"},
    %TypeCode{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R9"}
    # TODO: finsih H, U, P, T groups
  ]

  @map @all |> Map.new(fn c -> {TypeCode.most_specific_code(c), c} end)

  def get(code), do: Map.get(@map, code)
end
