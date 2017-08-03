# RandomUserApi
[![Build Status](https://travis-ci.org/PatNowak/random_user_api.svg?branch=master
"Build Status")](https://travis-ci.org/PatNowak/random_user_api)

**Small and useful library, which use API of http://randomuser.me to generate random users.**

[Hex link](https://hex.pm/packages/random_user_api)

## Installation

To install this app, just add it in your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:random_user_api, "~> 1.2.1"}
  ]
end
```

Documentation is available [here](https://hexdocs.pm/random_user_api/api-reference.html).

## Instruction

Usage is very straightforward. In many cases simple call for single user would be enough.
```elixir
alias RandomUserApi.Engine

# get single user
Engine.get_users()

# get 10 users
 Engine.get_users [number: 10]
 
# get one female
Engine.get users [gender: :female]

# get three men
Engine.get_users [number: 3, gender: :male]

# get one Brazilian
Engine.get_users [nat: "BR"]
```

### TODO:

- Included / excluded fields
- list of values

I rewrited this library to use HTTPoison, because HTTPotion had issues with SSL.

### Note:
If nationality you put is not known by the API, it will be ignored. Same story with `gender`.

Enjoy!
