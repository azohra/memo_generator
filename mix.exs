defmodule MemoGenerator.MixProject do
  use Mix.Project

  def project do
    [
      app: :memo_generator,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      source_url: "https://github.com/azohra/memo_generator",
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
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpoison, "~> 1.3"},
      {:poison, "~> 3.0"}
    ]
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/azohra/memo_generator", "Org" => "https://azohra.com/"}
    ]
  end
end
