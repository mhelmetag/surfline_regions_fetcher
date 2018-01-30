defmodule SurflineRegionsFetcher.Areas do
  import SurflineRegionsFetcher.Base

  def get_areas do
    get("http://www.surfline.com/surf-forecasts/", "[name=areaSelect]")
  end
end
