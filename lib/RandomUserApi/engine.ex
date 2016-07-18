defmodule RandomUserApi.Engine do
  
  import RandomUserApi.API, only: [get: 1] 

  @random_me_url Application.get_env :random_user_api, :random_me_url
  def get_single_user do
    fetch_url
    |> _to_json
    |> _get_single_user
  end

  def fetch_url do
    result = get @random_me_url
    case result do
      {:ok, data} -> data
      _ -> :error  
    end
  end

  defp _to_json(:error) do
    "An error occured. Please try again later."  
  end

  defp _to_json(data) do
    :jsx.decode data.body
  end

  defp _get_single_user(str) when is_bitstring(str) do
    str  
  end

  defp _get_single_user(json) do
    {_results, data} = json
    |> hd
    Enum.into(hd(data), %{})
  end
end