defmodule FixtureHelper do
  def load_fixture(fixture_name) do
    fixture_filename = fixture_name <> ".html"

    Path.join("fixtures", fixture_filename)
    |> File.read!(filename)
  end
end
