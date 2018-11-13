class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, index: true
      t.integer :category_id, index: true
      t.string :code
      t.string :price
      t.timestamps
    end
  end
end
