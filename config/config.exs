# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :error_reporting_ecto_404,
  ecto_repos: [ErrorReportingEcto404.Repo]

# Configures the endpoint
config :error_reporting_ecto_404, ErrorReportingEcto404.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Da62by1xvB7lQAzpmy7eOs+M2tl9CfwB+6o7kJ4c4ne0or0kS1GzsV+x4Sakh4DR",
  render_errors: [view: ErrorReportingEcto404.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ErrorReportingEcto404.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
