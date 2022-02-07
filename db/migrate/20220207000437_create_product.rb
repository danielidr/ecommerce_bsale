class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :product do |t|
      t.string :name
      t.string :url_image
      t.float :price
      t.integer :discount
      t.belongs_to :category, foreign_key: true
    end
  end
end
