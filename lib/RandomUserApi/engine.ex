defmodule RandomUserApi.Engine do
  @random_me_url "https://api.randomuser.me/"
  @nats ~w(AU BR CA CH DE DK ES FI FR GB IE IR NL NZ TR US)

  @doc """
  Function that generates n number of random users.
  Return list of maps with the users.

  ## Parameters
  * options: list of options, possible switches are:
    * number: integer that represents number of of required random users
    * gender: atom, :male or :female. If something different is passed, it won't be applied
    * nat: list of nationalities, for now just one. In handles only known nationalities by the API
  """

  def get_users(params \\ []) do
    options = params
    |> Map.new()
    |> validate_number()
    |> validate_gender()
    |> validate_nat()

    @random_me_url
    |> fetch_url(options)
    |> process
  end

  defp random_user_api do
    Application.get_env(:random_user_api, :random_me_api)
  end

  defp validate_number(options) do
    number = cond do
      is_number(options[:number]) -> options[:number]
      true -> 1
    end

    options
    |> Map.delete(:number)
    |> Map.put(:results, number)
  end

  defp validate_gender(options) do
    gender = case options[:gender] do
      :female -> :female
      :male -> :male
      _ -> nil
    end

    if gender do
      options
    else
      Map.delete(options, :gender)
    end
  end

  defp validate_nat(options) do
    if options[:nat] in @nats do
      options
    else
      Map.delete(options, :nat)
    end
  end

  defp process(input) do
    input
    |> to_json
    |> get_from_results
  end

  defp fetch_url(url, options) do
    result = random_user_api.get(url, options)
    case result do
      {:ok, %HTTPoison.Response{body: data}} -> data
      {:error, %HTTPoison.Error{reason: reason}} -> {:error, reason}
    end
  end

  defp to_json({:error, _reason} = input) do
    input
  end

  defp to_json(data) do
    :jsx.decode data
  end

  defp get_from_results(str) when is_bitstring(str) do
    str
  end

  defp get_from_results(json) do
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
