class ChangrDecriptionInCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :decription, :description
  end
end
