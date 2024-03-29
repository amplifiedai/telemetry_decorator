defmodule TelemetryDecorator.MixProject do
  use Mix.Project

  @version "1.0.2"

  def project do
    [
      app: :telemetry_decorator,
      deps: deps(),
      description: "A function decorator for telemetry",
      docs: docs(),
      elixir: "~> 1.8",
      homepage_url: "https://github.com/amplifiedai/opentelemetry_decorator",
      name: "TelemetryDecorator",
      package: package(),
      preferred_cli_env: [coveralls: :test, "coveralls.html": :test, "coveralls.json": :test],
      source_url: "https://github.com/amplifiedai/opentelemetry_decorator",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: @version
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:decorator, "~> 1.3"},
      {:dialyxir, "~> 1.1", only: :dev, runtime: false},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:excoveralls, "~> 0.14", only: :test, runtime: false},
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false},
      {:pretty, "~> 1.0"},
      {:telemetry, "~> 1.0"}
    ]
  end

  defp docs do
    [
      api_reference: false,
      authors: ["Garth Kidd"],
      canonical: "http://hexdocs.pm/telemetry_decorator",
      main: "TelemetryDecorator",
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      files: ~w(mix.exs README.md lib),
      licenses: ["Apache 2.0"],
      links: %{
        "Amplified" => "https://www.amplified.ai",
        "GitHub" => "https://github.com/amplifiedai/opentelemetry_decorator",
        "OpenTelemetry Erlang SDK" => "https://github.com/open-telemetry/opentelemetry-erlang"
      },
      maintainers: ["Simon Cocking", "Christopher Grainger"]
    ]
  end
end
