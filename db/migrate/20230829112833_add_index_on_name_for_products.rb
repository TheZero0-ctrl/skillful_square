class AddIndexOnNameForProducts < ActiveRecord::Migration[7.0]
  def self.up
    add_index :products, :name, unique: true
  end

  def self.down
    remove_index :products, :name
  end
end
