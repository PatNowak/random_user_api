defmodule RandomUserApi.Engine do

  @random_me_api RandomUserApi.API
  @random_me_url "http://api.randomuser.me"

  def get_users(1) do
    _fetch_url(@random_me_url)
    |> _process
    |> hd
  end

  def get_users(n) do
    _fetch_url(@random_me_url <> "?results=#{n}")
    |> _process
  end

  def get_users(1, gender: :male) do
    _fetch_url(@random_me_url <> "?gender=male")
    |> _process
    |> hd
  end

  def get_users(1, gender: :female) do
    _fetch_url(@random_me_url <> "?gender=female")
    |> _process
    |> hd
  end

  def get_users(n, gender: :female) do
    _fetch_url(@random_me_url <> "?results=#{n}&gender=female")
    |> _process
  end

  def get_users(n, gender: :male) do
    _fetch_url(@random_me_url <> "?results=#{n}&gender=male")
    |> _process
  end

  defp _process(input) do
    input
    |> _to_json
    |> _get_from_results
  end

  defp _fetch_url(url) do
    result = @random_me_api.get url
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

  defp _get_from_results(str) when is_bitstring(str) do
    str
  end

  defp _get_from_results(json) do
    {_results, data} = json
    |> hd
    for user <- data, do: Enum.into(user, %{})
  end
end
