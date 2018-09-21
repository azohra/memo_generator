defmodule MemoGenerator.MixProject do
  use Mix.Project

  def project do
    [
      app: :memo_generator,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/azohra/memo_generator"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      applications: [:httpoison]
    ]
  end

  defp description() do
    "Generates a memo in Markdown format based on your team's trello boards"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.3"},
      {:poison, "~> 4.0"}
    ]
  end
end
