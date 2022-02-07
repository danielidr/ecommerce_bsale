class ChangeForeignKeyForProduct < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :product, :category, column: :category, primary_key: "id"
  end
end
