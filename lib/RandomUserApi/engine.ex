defmodule RandomUserApi.Engine do

  @random_me_api RandomUserApi.API
  @random_me_url "http://api.randomuser.me"

  @doc """
  Function that generates n number of random users.
  Return list of maps with the users.

  ## Parameters
  - number: integer that represents number of of required random users.
  - gender: atom, :male or :female. If something different is passed, it won't be applied.
  - nat: list of nationalities, comma-separated. In handles only known nationalities by the API.
  """

  def get_users(number, gender, nat \\ []) do
    url = @random_me_url <> "?results=#{number}"
    url = if _validate_gender(gender), do: url <> "&gender=#{gender}", else: url
    nat = _validate_nat(nat)
    url = if nat != "", do: url <> "&nat=#{nat}", else: url
    url
    |> _fetch_url
    |> _process
  end

  defp _validate_gender(gender) do
    case gender do
      :female -> :female
      :male -> :male
      _ -> nil
    end
  end

  defp _validate_nat(nat) when is_list(nat) do
     nats = ~w(AU BR CA CH DE DK ES FI FR GB IE IR NL NZ TR US)
     nat
     |> Enum.filter(&(&1 in nats))
     |> Enum.join(",")
  end

  defp _validate_nat(_nat) do
    ""
  end

  defp _process(input) do
    input
    |> _to_json
    |> _get_from_results
  end

  defp _fetch_url(url) do
    result = @random_me_api.get url
    IO.puts inspect result
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
