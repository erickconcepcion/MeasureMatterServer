defmodule MeasureMatterServerWeb.CartView do
  use MeasureMatterServerWeb, :view

  alias MeasureMatterServer.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
