defmodule RandomUserApi.Engine do

  @random_me_api RandomUserApi.API
  @random_me_url "http://api.randomuser.me"

  @doc """
  Gets n number of random users.
  Return list of maps with the users.
  """

  def get_users(number, gender) do
    url = @random_me_url <> "?results=#{number}"
    if _validate_gender gender do
      url = url <> "&gender=#{gender}"
    end

    _fetch_url(url)
    |> _process
  end

  defp _validate_gender(gender) do
    case gender do
      :female -> :female
      :male -> :male
      _ -> nil
    end
  end

 # TODO
  # defp _validate_nat(nat) do
  #    nats = ~w(AU BR CA CH DE DK ES FI FR GB IE IR NL NZ TR US)
  # end

  defp _process(input) do
    input
    |> _to_json
    |> _get_from_results
  end

  defp _fetch_url(url) do
    IO.puts url
    result = @random_me_api.get url
    case result do
      %{body: data} -> data
      %{message: _} -> :error
    end
  end

  defp _to_json(:error) do
    "An error occured. Please try again later."
  end

  defp _to_json(data) do
    :jsx.decode data
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
