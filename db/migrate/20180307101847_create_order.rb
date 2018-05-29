class CreateOrder < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.boolean :order_status
      t.decimal :numero
      t.references :user
    end
  end
end
