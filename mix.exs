defmodule AdventOfCodeHelper.Mixfile do
  use Mix.Project

  def project do
    [
      app: :advent_of_code_helper,
      version: "0.1.2",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      preferred_cli_env: [
        "coveralls": :test,
        "coveralls.html": :test,
        "coveralls.json": :test,
      ],
test_coverage: [tool: ExCoveralls],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
   [
      {:tesla, "~> 0.7.1"},{:dialyxir, "~> 0.5", only: [:dev], runtime: false},{:excoveralls, "~> 0.7.2", only: :test},{:ex_doc, ">=0.0.0", only: :dev},{:double, "~> 0.6.1", only: :test}
   ]
  end

  defp description do
    """
    Package to allow you to get input for all advent of code puzzles, rather than
    pasting them in manually.
    """
  end

  defp package do
    [
      name: :advent_of_code_helper,
      files: ["lib","mix.exs","config/config.exs.sample","README*","LICENSE"],
      maintainers: ["Edward Hobbs"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ejhobbs/Advent-Of-Code"}
    ]
  end

end
