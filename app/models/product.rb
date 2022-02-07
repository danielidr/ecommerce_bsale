class Product < ApplicationRecord
  belongs_to :product_category, foreign_key: :category, class_name: 'Category' 
  def self.get_product_list(category_id)
    Product.where(category: category_id)
  end
end
