import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :measure_matter_server, MeasureMatterServer.Repo,
  username: "sa",
  password: "Abcd.1234",
  hostname: "localhost",
  database: "measure_matter_server_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :measure_matter_server, MeasureMatterServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "cpYi7GXsNTml2kYnYn4qd2EWbj3W8FZ6c8+Dsy5xL2f9JMlyCz9R+PbgBn5hbk6f",
  server: false

# In test we don't send emails.
config :measure_matter_server, MeasureMatterServer.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
