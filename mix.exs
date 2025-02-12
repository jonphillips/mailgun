defmodule Mailgun.Mixfile do
  use Mix.Project

  def project do
    [app: :mailgun,
     version: "0.1.3",
     elixir: "~> 1.5",
     deps: deps,
     package: [
       contributors: ["Chris McCord"],
       licenses: ["MIT"],
       links: %{github: "https://github.com/chrismccord/mailgun"}
     ],
     description: """
     Elixir Mailgun Client
     """]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :inets, :ssl]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:exvcr, "~> 0.4.0", only: [:test]},
     {:jason, "~> 1.0"}
    ]
  end
end
