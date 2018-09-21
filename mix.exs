defmodule MemoGenerator.MixProject do
  use Mix.Project

  def project do
    [
      app: :memo_generator,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      applications: [:httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.3"},
      {:poison, "~> 4.0"}
    ]
  end
end