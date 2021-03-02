# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :channels_project,
  ecto_repos: [ChannelsProject.Repo]

# Configures the endpoint
config :channels_project, ChannelsProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3ngm+xs0u37gqiCqwZa3ry/20hQW4pSKpRZm8j7Ju70S7nDMUW3c8RY1ErYu+zTS",
  render_errors: [view: ChannelsProjectWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ChannelsProject.PubSub,
  live_view: [signing_salt: "7U+yjO9L"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
