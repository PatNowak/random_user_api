defmodule RandomUserApi.CLI do

  @moduledoc """
  Handle the command line interface for getting random users.
  """
  alias RandomUserApi.Engine

  @doc """
  Gets single random user.
  Return map with the user.
  """
  def get_user do
    Engine.get_users 1
  end

  @doc """
  Gets n number of users.
  Return list of maps with users.
  """
  def get_users(n) do
    Engine.get_users(n)
  end

  @doc """
  Gets single random user with gender "male".
  Return map with the male.
  """
  def get_male do
    Engine.get_users(1, gender: :male)
  end

  @doc """
  Gets single random user with gender "female".
  Return map with the female.
  """
  def get_female do
    Engine.get_users(1, gender: :female)
  end

  @doc """
  Gets n number of users and all of them are males.
  Return list of maps with males.
  """
  def get_males(n) do
    Engine.get_users(n, gender: :male)
  end

  @doc """
  Gets n number of users and all of them are females.
  Return list of maps with females.
  """
  def get_females(n) do
    Engine.get_users(n, gender: :female)
  end

end