class ChangeForeignKeyForProduct < ActiveRecord::Migration[5.2]
  def change
    rename_column :product, :category_id, :category
  end
end
