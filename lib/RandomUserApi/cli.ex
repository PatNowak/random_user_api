defmodule RandomUserApi.CLI do

  import RandomUserApi.Engine, only: [get_single_user: 0]
  def get_user do
    get_single_user
  end

end