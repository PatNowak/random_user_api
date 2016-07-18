defmodule RandomUserApi.Mixfile do
  use Mix.Project

  def project do
    [app: :random_user_api,
     version: "0.1.0",
     elixir: "~> 1.2",
      name: "RandomUserApi",
     source_url: "https://github.com/PatNowak/random_user_api",
     elixir: "~> 1.2",
     escript: escript_config,
     package: package,
     description: description,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :jsx]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.9.0"},
      {:jsx, "~> 2.8.0"}
    ]
  end

  defp package do
    [# These are the default files included in the package
     name: :githubissues,
     files: ["lib", "doc", "README*"],
     maintainers: ["Patryk Nowak"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/PatNowak/GithubIssues-Elixir"}]
  end

  defp escript_config do
    [main_module: RandomUserApi.CLI]
  end

  defp description do
    "It's a simple client of randomuser.me to get random user."
  end
end
