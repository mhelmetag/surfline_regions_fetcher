defmodule SurflineRegionsFetcher.Areas do
  @moduledoc """
  Provides a method for retrieving Areas from Surfline.
  """

  import SurflineRegionsFetcher.Base

  def get_areas do
    get("http://www.surfline.com/surf-forecasts/", "[name=areaSelect]")
  end
end
