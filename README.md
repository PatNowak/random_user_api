# RandomUserApi
[![Build Status](https://travis-ci.org/PatNowak/random_user_api.svg?branch=master
"Build Status")](https://travis-ci.org/PatNowak/random_user_api)

**Small and useful library, which use API of http://randomuser.me to generate random users.**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add random_user_api to your list of dependencies in `mix.exs`:

        def deps do
          [{:random_user_api, "~> 0.0.1"}]
        end

  2. Ensure random_user_api is started before your application:

        def application do
          [applications: [:random_user_api]]
        end

