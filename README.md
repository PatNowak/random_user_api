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


Sketch of the documentation is available [here](https://hexdocs.pm/random_user_api/api-reference.html).

For now works:

    getting single user
    getting multiple users
    getting user/s with selected gender
    getting users with selected nationality/ies

Todo:

    narrowing informations about users with inc/exc

Enjoy!
