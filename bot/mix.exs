defmodule Bot.MixProject do
  use Mix.Project

  def project do
    [
      app: :bot,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Almond, []}
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.2"},
      {:httpotion, "~> 3.1.3"},
      {:porcelain, "~> 2.0"},
      {:alchemy, "~> 0.6.8", hex: :discord_alchemy}
    ]
  end

end
