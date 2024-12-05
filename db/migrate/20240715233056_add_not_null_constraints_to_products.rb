class AddNotNullConstraintsToProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :product_name, :string, null: false
    change_column :products, :stock_level, :integer, null: false
  end
end
