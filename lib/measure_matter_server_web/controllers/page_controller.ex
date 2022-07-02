defmodule MeasureMatterServerWeb.PageController do
  use MeasureMatterServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
