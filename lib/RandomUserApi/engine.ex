defmodule RandomUserApi.Engine do
  @random_me_url "https://api.randomuser.me"
  @possible_fields ~w(cell dob email gender id location login name nat phone picture registered)
  @nats ~w(AU BR CA CH DE DK ES FI FR GB IE IR NL NZ TR US)

  @doc """
  Function that generates n number of random users.
  Return list of maps with the users.

  ## Parameters
  * options: list of options, possible switches are:
    * number: integer that represents number of of required random users
    * gender: atom, :male or :female. If something different is passed, it won't be applied
    * nat: list of nationalities, comma-separated. In handles only known nationalities by the API
    * inc: list of included fields
    * exc: list of excluded fields
  """

  def get_users(options \\ []) do
    @random_me_url
    |> _validate_number(options)
    |> _validate_gender(options)
    |> _validate_fields(:nat, options)
    |> _validate_fields(:inc, options)
    |> _validate_fields(:exc, options)
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
      url <> "&gender=#{gender}"
    else
      url
    end
  end

  defp _validate_fields(url, name, options) do
    possible_fields = if name == :nat do
      @nats
    else
      @possible_fields
    end
    fields = cond do
      is_list(options[name]) -> options[name]
      true -> []
    end
   |> Enum.filter(&(&1 in possible_fields))
   |> Enum.join(",")
   url <> "&#{name}=#{fields}"
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
    {_results, data} = hd(json)
    is_empty = fn(x) -> (
      if x == [{}] do
        []
      else
        x
      end
    ) end
    data = Enum.map(data, is_empty)
    for user <- data, do: Enum.into(user, %{})
  end
end
