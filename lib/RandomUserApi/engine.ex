defmodule RandomUserApi.Engine do
  @random_me_url "http://api.randomuser.me"

  @doc """
  Function that generates n number of random users.
  Return list of maps with the users.

  ## Parameters
  - number: integer that represents number of of required random users.
  - gender: atom, :male or :female. If something different is passed, it won't be applied.
  - nat: list of nationalities, comma-separated. In handles only known nationalities by the API.
  """

  def get_users(options \\ []) do
    @random_me_url
    |> _validate_number(options)
    |> _validate_gender(options)
    |> _validate_nat(options)
    |> _fetch_url
    |> _process
  end

  defp _random_user_api do
    Application.get_env(:random_user_api, :random_me_api)
  end

  def _validate_number(url, options) do
    number = cond do
      is_number(options[:number]) -> options[:number]
      true -> 1
    end
    url <> "?results=#{number}"
  end

  defp _validate_gender(url, options) do
    gender = case options[:gender] do
      :female -> :female
      :male -> :male
      _ -> nil
    end
    if gender do
      url = url <> "&gender=#{gender}" 
    end
    url
  end

  defp _validate_nat(url, options) do
     nats = ~w(AU BR CA CH DE DK ES FI FR GB IE IR NL NZ TR US)
     nat = cond do
       is_list(options[:nat]) -> options[:nat]
       true -> []
     end
     |> Enum.filter(&(&1 in nats))
     |> Enum.join(",")
     url <> "&nat=#{nat}"
  end

  defp _process(input) do
    input
    |> _to_json
    |> _get_from_results
  end

  defp _fetch_url(url) do
    result = _random_user_api.get url
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
