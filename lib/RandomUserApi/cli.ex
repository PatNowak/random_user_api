defmodule RandomUserApi.CLI do

  import RandomUserApi.Engine, only: [get_single_user: 0]
  def get_user do
    # here I will have to use parse_args and something like that
    # to add custom flags and specify number of users, gender etc.
    get_single_user
  end

end