defmodule MeasureMatterServerWeb.BaseItemView do
  use MeasureMatterServerWeb, :view

  def render("show.json", %{sku: sku}) do
    %{data: %{sku: sku}}
  end
end
