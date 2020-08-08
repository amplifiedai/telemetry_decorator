defmodule TelemetryDecorator.MixProject do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :telemetry_decorator,
      deps: deps(),
      elixir: "~> 1.8",
      preferred_cli_env: [coveralls: :test, "coveralls.html": :test, "coveralls.json": :test],
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: @version,

      # Hex
      description: "A function decorator for telemetry",
      package: package(),

      # Docs
      docs: docs(),
      name: "TelemetryDecorator"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.4.0", only: [:dev, :test], runtime: false},
      {:decorator, "~> 1.3.2"},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false},
      {:ex_doc, "~> 0.21.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.13.0", only: :test, runtime: false},
      {:mix_test_watch, "~> 1.0.2", only: :dev, runtime: false},
      {:pretty, "~> 1.0.4"},
      {:telemetry, "~> 0.4.2"}
    ]
  end

  defp docs do
    [
      main: "TelemetryDecorator",
      extras: [],
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/telemetry_decorator",
      source_url: "https://github.com/amplifiedai/opentelemetry_decorator"
    ]
  end

  defp package do
    [
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/amplifiedai/opentelemetry_decorator",
        "OpenTelemetry Erlang SDK" => "https://github.com/open-telemetry/opentelemetry-erlang"
      },
      maintainers: ["Garth Kidd"]
    ]
  end
end
