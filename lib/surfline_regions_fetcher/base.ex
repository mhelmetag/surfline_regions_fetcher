defmodule SurflineRegionsFetcher.Base do
  @headers ["x-requested-with": "XMLHttpRequest", "accept": "text/html"]

  def get(url, selector) do
    case HTTPoison.get(url, @headers) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}}
        -> process_html(body, selector)
      {:error, %HTTPoison.Error{reason: reason}} -> raise reason
    end
  end

  def process_html(html, selector) do
    html |>
    find_select(selector) |>
    process_select
  end

  defp find_select(html, selector) do
    Floki.find(html, selector)
  end

  defp process_select(select_node) do
    [{"select", _, option_nodes}] = select_node

    option_nodes
    |> filter_options
    |> process_options
  end

  def filter_options(option_nodes) do
    Enum.filter(option_nodes, fn(option_node) ->
      [surfline_id] = Floki.attribute(option_node, "value")
      surfline_id != ""
    end)
  end

  def process_options(option_nodes) do
    Enum.map(option_nodes, fn(option_node) -> process_option(option_node) end)
  end

  defp process_option(option_node) do
    [surfline_id] = Floki.attribute(option_node, "value")
    %{name: Floki.text(option_node), surfline_id: surfline_id}
  end
end
