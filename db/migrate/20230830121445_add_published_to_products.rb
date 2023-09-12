class AddPublishedToProducts < ActiveRecord::Migration[7.0]
  def up
    add_column :products, :published, :boolean, null: false, default: false
  end

  def down
    remove_column :products, :published
  end
end
