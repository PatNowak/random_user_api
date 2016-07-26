defmodule RandomUserApi.API do
  @doc """
  Simply go to requested url to get its data
  """
  def get(url) do
    HTTPoison.get url
  end
end
