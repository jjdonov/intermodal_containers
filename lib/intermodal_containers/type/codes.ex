defmodule IntermodalContainers.Type.Codes do
  alias IntermodalContainers.Type.Code

  @gp_designation "General purpose container without ventilation"
  @vh_designation ""
  @bu_designation ""
  @bk_designation ""
  @sn_designation ""
  @re_designation ""
  @rt_designation ""
  @rs_designation ""

  @all [
    %Code{code: "G", designation: @gp_designation, group_code: "GP"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G0"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G1"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G2"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G3"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G4"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G4"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G5"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G6"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G7"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G8"},
    %Code{code: "G", designation: @gp_designation, group_code: "GP", detailed_type_code: "G9"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V0"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V1"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V2"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V3"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V4"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V5"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V6"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V7"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V8"},
    %Code{code: "V", designation: @vh_designation, group_code: "VH", detailed_type_code: "V9"},
    %Code{code: "B", designation: @bu_designation, group_code: "BU"},
    %Code{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B0"},
    %Code{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B1"},
    %Code{code: "B", designation: @bu_designation, group_code: "BU", detailed_type_code: "B2"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B3"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B4"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B5"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B6"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B7"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B8"},
    %Code{code: "B", designation: @bk_designation, group_code: "BK", detailed_type_code: "B9"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S0"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S1"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S2"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S3"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S4"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S5"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S6"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S7"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S8"},
    %Code{code: "S", designation: @sn_designation, group_code: "SN", detailed_type_code: "S9"},
    %Code{code: "R", designation: @re_designation, group_code: "RE"},
    %Code{code: "R", designation: @re_designation, group_code: "RE", detailed_type_code: "R0"},
    %Code{code: "R", designation: @rt_designation, group_code: "RT"},
    %Code{code: "R", designation: @rt_designation, group_code: "RT", detailed_type_code: "R1"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R2"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R3"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R4"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R5"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R6"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R7"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R8"},
    %Code{code: "R", designation: @rs_designation, group_code: "RS", detailed_type_code: "R9"}
    # TODO: finsih H, U, P, T groups
  ]

  @map @all |> Map.new(fn c -> {Code.most_specific_code(c), c} end)

  def get(code), do: Map.get(@map, code)
end
