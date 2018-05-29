class Upload < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :type
      t.integer :product_id, index: true
    end
  end
end
