class CreateJoinTableCartsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
       t.references :cart
       t.references :product
       t.integer :quantity, default: 1
       t.timestamps
    end
  end
end
