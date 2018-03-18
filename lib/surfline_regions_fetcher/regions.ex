defmodule SurflineRegionsFetcher.Regions do
  @moduledoc """
  Provides a method for retrieving Regions from Surfline.
  """

  import SurflineRegionsFetcher.Base

  @base_url "http://www.surfline.com/surfline/forecasts4/includes_forecast/forecast_selector_output.cfm?type=region&id="

  def get_regions(area_id) do
    @base_url <> area_id
    |> get("[name=regionSelect]")
  end
end
