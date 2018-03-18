defmodule SurflineRegionsFetcher.Areas do
  @moduledoc """
  Provides a method for retrieving Areas from Surfline.
  """

  import SurflineRegionsFetcher.Base

  @base_url "http://www.surfline.com/surf-forecasts/"

  def get_areas do
    get(@base_url, "[name=areaSelect]")
  end
end
