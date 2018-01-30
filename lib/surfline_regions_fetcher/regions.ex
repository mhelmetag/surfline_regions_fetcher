defmodule SurflineRegionsFetcher.Regions do
  @moduledoc """
  Provides a method for retrieving Regions from Surfline.
  """

  import SurflineRegionsFetcher.Base

  def get_regions(area_id) do
    url = "http://www.surfline.com/surfline/forecasts4/includes_forecast/forecast_selector_output.cfm?type=region&id=" <> area_id
    get(url, "[name=regionSelect]")
  end
end
