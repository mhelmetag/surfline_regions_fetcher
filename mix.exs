defmodule SurflineRegionsFetcher.MixProject do
  use Mix.Project

  def project do
    [
      app: :surfline_regions_fetcher,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:floki, "~> 0.19.0"},
      {:httpoison, "~> 1.0"},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false}
    ]
  end
end
