defmodule SurflineRegionsFetcher.AreasTest do
  use ExUnit.Case, async: true
  alias SurflineRegionsFetcher.Areas

  doctest Areas

  test "get_areas" do
    expected_areas = [
      %{name: "4716", surfline_id: "North America"},
      %{name: "4710", surfline_id: "Central America"},
      %{name: "4711", surfline_id: "South America"},
      %{name: "4707", surfline_id: "Carribean"},
      %{name: "4712", surfline_id: "Europe"},
      %{name: "54137", surfline_id: "Middle East"},
      %{name: "4715", surfline_id: "Africa"},
      %{name: "4709", surfline_id: "Indian Ocean"},
      %{name: "4705", surfline_id: "Asia"},
      %{name: "4713", surfline_id: "Australia"},
      %{name: "4714", surfline_id: "New Zealand"},
      %{name: "4706", surfline_id: "Pacific Islands"},
      %{name: "107392", surfline_id: "WCT Events"}
    ]

    actual_areas = Areas.get_areas

    assert expected_areas == actual_areas
  end
end
