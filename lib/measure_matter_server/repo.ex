defmodule MeasureMatterServer.Repo do
  use Ecto.Repo,
    otp_app: :measure_matter_server,
    adapter: Ecto.Adapters.Tds
end
