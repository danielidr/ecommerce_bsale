class Product < ApplicationRecord
  belongs_to :product_category, foreign_key: :category, class_name: 'Category' 
  
  def self.get_products_by_name(search)
    Product.where('name LIKE ?', "%#{search}%")
  end
end
