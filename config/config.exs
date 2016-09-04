# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :releaseSchedule_webpack, ReleaseScheduleWebpack.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "FJ1nLR9MWB0vVlJ6YGX1/LZicYMjy7+Ds09JmLteXSo4WAd7oqNIU1pHhJ8y8IRt",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ReleaseScheduleWebpack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

# configure ecto 2.0 repo
config: :releaseSchedule_webpack, [ReleaseScheduleWebpack.Repo]

