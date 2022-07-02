defmodule MeasureMatterServerWeb.BaseItemController do
  use MeasureMatterServerWeb, :controller

  action_fallback MeasureMatterServerWeb.FallbackController

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def show(conn, %{"sku"=> sku}=params) do
    format = params
    |> Map.put_new(:_format, "html")
    |> Map.get(:_format)
    conn
    |> put_flash(:info, "here is in format #{format}")
    |> render(:show, sku: sku)
  end
end
