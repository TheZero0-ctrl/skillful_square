class AddPriceToProduct < ActiveRecord::Migration[7.0]
  def change
    add_monetize :products, :price
  end
end
