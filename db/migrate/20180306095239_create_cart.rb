class CreateCart < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      #t.integer :user_id, index: true
      #t.integer :product_id, index: true
      t.references :user, index: true
    end
  end
end
