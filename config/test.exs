use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :error_reporting_ecto_404, ErrorReportingEcto404.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :sentry,
  environment_name: "test"

# Configure your database
config :error_reporting_ecto_404, ErrorReportingEcto404.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "error_reporting_ecto_404_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
