defmodule RandomUserApi.API do
  
  def get(url) do
    HTTPoison.get url
  end
end