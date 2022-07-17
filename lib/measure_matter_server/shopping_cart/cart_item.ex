defmodule MeasureMatterServer.ShoppingCart.CartItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cart_items" do
    field :price_when_carted, :decimal
    field :quantity, :integer

    belongs_to :cart, MeasureMatterServer.ShoppingCart.Cart
    belongs_to :product, MeasureMatterServer.Catalog.Product

    timestamps()
  end

  @doc false
  def changeset(cart_item, attrs) do
    cart_item
    |> cast(attrs, [:price_when_carted, :quantity])
    |> validate_required([:price_when_carted, :quantity])
    |> validate_number(:quantity, greater_than_or_equal_to: 0, less_than: 100)
    |> unique_constraint([:cart_id, :product_id])
  end
end
