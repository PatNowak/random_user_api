defmodule RandomUserApi.API do
  @doc """
  Simply go to requested url to get its data
  """
  def get(url, options) do
    HTTPoison.get(url, [], params: options)
  end
end
