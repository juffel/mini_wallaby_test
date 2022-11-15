import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :mini_wallaby, MiniWallaby.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "mini_wallaby_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mini_wallaby, MiniWallabyWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "0/iXBfTF3w/E1AbTizLgGYEg7W6Zd4NftP8kjlpOW3GpwrEJr4OzgaFgibqZWLh/",
  server: false

# In test we don't send emails.
config :mini_wallaby, MiniWallaby.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :wallaby,
  otp_app: :mini_wallaby,
  driver: Wallaby.Chrome, # default
  screenshot_on_failure: true

config :mini_wallaby, MiniWallabyWeb.Endpoint,
  server: true

config :mini_wallaby, :sandbox, Ecto.Adapters.SQL.Sandbox
