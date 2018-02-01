# SurflineRegionsFetcher

Gets Areas, Regions and Sub Regions for Surfline Forecasts.

## Installation

For now, this can only be downloaded from GitHub:

```elixir
def deps do
  [
    {:surfline_regions_fetcher, github: "mhelmetag/surfline_regions_fetcher", tag: "0.1.0"}
  ]
end
```

## Docs

For now, there are no docs...

However, this library can be used like this:
```elixir
# To get all Areas
SurflineRegionsFetcher.Areas.get_areas
[
  %{name: "North America", surfline_id: "4716"},
  %{name: "Central America", surfline_id: "4710"},
  %{name: "South America", surfline_id: "4711"},
  %{name: "Caribbean", surfline_id: "4707"},
  %{name: "Europe", surfline_id: "4712"},
  %{name: "Middle East", surfline_id: "54137"},
  %{name: "Africa", surfline_id: "4715"},
  %{name: "Indian Ocean", surfline_id: "4709"},
  %{name: "Asia", surfline_id: "4705"},
  %{name: "Australia", surfline_id: "4713"},
  %{name: "New Zealand", surfline_id: "4714"},
  %{name: "Pacific Islands", surfline_id: "4706"},
  %{name: "WCT Events", surfline_id: "107392"}
]

# To get all Regions in an Area
SurflineRegionsFetcher.Regions.get_regions("4716")
[
  %{name: "British Columbia", surfline_id: "7997"},
  %{name: "Pacific Northwest", surfline_id: "2082"},
  %{name: "Northern California", surfline_id: "2083"},
  %{name: "Central California", surfline_id: "2923"},
  %{name: "Southern California", surfline_id: "2081"},
  %{name: "Eastern Canada", surfline_id: "7999"},
  %{name: "Great Lakes", surfline_id: "71630"},
  %{name: "New England", surfline_id: "68362"},
  %{name: "Long Island", surfline_id: "131698"},
  %{name: "Mid Atlantic", surfline_id: "2084"},
  %{name: "Virginia - Outer Banks", surfline_id: "2085"},
  %{name: "Southeast", surfline_id: "126152"},
  %{name: "Florida", surfline_id: "2086"},
  %{name: "Florida Gulf", surfline_id: "2087"},
  %{name: "Gulf States", surfline_id: "118010"},
  %{name: "Texas", surfline_id: "2088"},
  %{name: "Kauai", surfline_id: "52736"},
  %{name: "Oahu", surfline_id: "52737"},
  %{name: "Maui", surfline_id: "53050"},
  %{name: "Big Island Hawaii", surfline_id: "53051"},
  %{name: "Lanai", surfline_id: "53053"},
  %{name: "Molokai", surfline_id: "53055"},
  %{name: "Northern Baja", surfline_id: "2089"},
  %{name: "Southern Baja", surfline_id: "2935"},
  %{name: "Northern Mexico", surfline_id: "128530"},
  %{name: "Southern Mexico", surfline_id: "2090"}
]

# To get all Sub Regions in a Region
SurflineRegionsFetcher.SubRegions.get_sub_regions("2081")
[
  %{name: "North Santa Barbara County", surfline_id: "2963"},
  %{name: "Santa Barbara", surfline_id: "2141"},
  %{name: "Ventura", surfline_id: "2952"},
  %{name: "North Los Angeles", surfline_id: "2142"},
  %{name: "South Los Angeles", surfline_id: "2951"},
  %{name: "North Orange County", surfline_id: "2143"},
  %{name: "South Orange County", surfline_id: "2950"},
  %{name: "North San Diego", surfline_id: "2144"},
  %{name: "South San Diego", surfline_id: "2953"}
]
```
