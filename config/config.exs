# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview_test,
  ecto_repos: [LiveviewTest.Repo]

# Configures the endpoint
config :liveview_test, LiveviewTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yYZ2Gc9IQn/u5aagxogwGxL9yyQMgbYfAt8fvO0iwDiU1a3hTm9c8UtBeuSRsy36",
  render_errors: [view: LiveviewTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
  	signing_salt: "aaaAAAAaaaaAAAAaaaaaAAAAaaaAAaaAAa"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  	template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
