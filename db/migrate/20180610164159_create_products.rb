class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price
      t.integer :category_id

      t.timestamps
    end
  end
end
