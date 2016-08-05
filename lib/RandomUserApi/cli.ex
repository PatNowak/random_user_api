defmodule RandomUserApi.CLI do

  @moduledoc """
  Handle the command line interface for getting random users.
  """
  alias RandomUserApi.Engine

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def process(:unknown) do
    IO.puts "Unknown command, please try again. Specify at least number of users."
    System.halt(0)
  end

  def process(:help) do
    IO.puts """
    Random_user_api is small library to generates random users.
    usage: <number> [gender | nil] [nationalities| nil]
    * number - number of users, there's no default value
    * gender - male or female, by default is set to nil
    * nationalities - you can specify one or more in list, by default is nil
    """
    System.halt(0)
  end

  def process({number, gender, nat}) do
    RandomUserApi.Engine.get_users(number, gender, nat)
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])
    case parse do
      {[help: true], _, _} -> :help
      {_, [number, gender, nat], _} -> {number, gender, nat}
      {_, [number, gender, _ ], _} -> {number, gender, nil}
      {_, [number, _, _ ], _} -> {number, nil, nil}
      _ -> :unknown
    end
  end

end
