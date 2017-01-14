# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rxi_design,
  ecto_repos: [RxiDesign.Repo]

# Configures the endpoint
config :rxi_design, RxiDesign.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eAd8K4JcSQE9xiDbPWHwO98++J6TDGCxAzZUcrCfArc7VqW1EHZQAmGeFOPS1+J4",
  render_errors: [view: RxiDesign.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RxiDesign.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
