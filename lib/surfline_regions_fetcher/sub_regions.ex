defmodule SurflineRegionsFetcher.SubRegions do
  import SurflineRegionsFetcher.Base

  def get_sub_regions(region_id) do
    url = "http://www.surfline.com/surfline/forecasts4/includes_forecast/forecast_selector_output.cfm?type=subregion&id=" <> region_id
    get(url, "[name=subregionSelect]")
  end
end
