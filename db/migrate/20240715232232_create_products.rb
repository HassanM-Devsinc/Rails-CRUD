class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :stock_level

      t.timestamps
    end
  end
end
