defmodule MeasureMatterServerWeb.FallbackController do
  use Phoenix.Controller
  def call(conn, {:error, err}) do
    conn
    |> put_status(err)
    |> put_view(HelloWeb.ErrorView)
    |> render(:"An Error")
  end
end
