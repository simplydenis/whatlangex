defmodule Whatlangex.MixProject do
  use Mix.Project

  def project do
    [
      app: :whatlangex,
      version: "0.2.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Whatlang NIF bindings",
      homepage_url: "https://github.com/pierrelegall/whatlangex",
      package: package()
    ]
  end

  def package() do
    [
      maintainers: ["Pierre Le Gall"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/pierrelegall/whatlangex"
      },
      files: package_files()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.29.0", only: :dev, runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:rustler, "~> 0.27.0"}
    ]
  end

  defp package_files do
    ~w(
      .formatter.exs
      LICENSE
      README.md
      lib/
      mix.exs
      native/whatlang_nif/.cargo/
      native/whatlang_nif/Cargo.lock
      native/whatlang_nif/Cargo.toml
      native/whatlang_nif/README.md
      native/whatlang_nif/src/
    )
  end
end
