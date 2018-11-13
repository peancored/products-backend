class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :key
      t.string :value
      t.integer :product_id
      t.timestamps
    end
  end
end
