defmodule SurflineRegionsFetcher.SubRegions do
  @moduledoc """
  Provides a method for retrieving SubRegions from Surfline.
  """

  import SurflineRegionsFetcher.Base

  @base_url "http://www.surfline.com/surfline/forecasts4/includes_forecast/forecast_selector_output.cfm?type=subregion&id="

  def get_sub_regions(region_id) do
    @base_url <> region_id
    |> get("[name=subregionSelect]")
  end
end
