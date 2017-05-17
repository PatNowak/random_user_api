# RandomUserApi
[![Build Status](https://travis-ci.org/PatNowak/random_user_api.svg?branch=master
"Build Status")](https://travis-ci.org/PatNowak/random_user_api)

**Small and useful library, which use API of http://randomuser.me to generate random users.**

[Hex link](https://hex.pm/packages/random_user_api)

## Installation

The package can be installed as:

  1. Add random_user_api to your list of dependencies in `mix.exs`:

        def deps do
          [{:random_user_api, "~> 1.0.0"}]
        end

  2. Ensure random_user_api is started before your application, otherwise it won't work:

        def application do
          [applications: [:random_user_api]]
        end


Documentation is available [here](https://hexdocs.pm/random_user_api/api-reference.html).

##Instruction

To use this library just call `Engine.get_users/1` with `options`, which are by default empty list.

In this short instruction assume, that `Engine` is an alias for `RandomUserApi.Engine`.

- Get single user

        Engine.get_users`

- Get Multiple users eg. 10

        Engine.get_users [number: 10]

- Get users with selected gender eg. `"female"`

        Engine.get_users [gender: :female]

- Get three mans

        Engine.get_users [number: 3, gender: :male]

- Get BR user
        Engine.get_users [nat: "BR"]`

###TODO:

- Included / excluded fields
- list of values

I rewrited this library to use HTTPoison, because HTTPotion had issues with SSL.

### Note:
If nationality you put is not known by the API, it will be ignored. Same story with `gender`.

Enjoy!
