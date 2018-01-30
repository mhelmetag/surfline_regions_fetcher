defmodule SurflineRegionsFetcher.SubRegions do
  @moduledoc """
  Provides a method for retrieving SubRegions from Surfline.
  """

  import SurflineRegionsFetcher.Base

  def get_sub_regions(region_id) do
    url = "http://www.surfline.com/surfline/forecasts4/includes_forecast/forecast_selector_output.cfm?type=subregion&id=" <> region_id
    get(url, "[name=subregionSelect]")
  end
end
