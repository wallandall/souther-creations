class ChangePositionInCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :position, :sort
  end
end
