class Product < ApplicationRecord
  belongs_to :product_category, foreign_key: :category, class_name: 'Category' 
  
  def self.get_products_by_name(search)
    Product.where('name LIKE ?', "%#{search}%")
  end

  def self.get_products_by_price_range(price1, price2)
    Product.where(price: price1..price2).order(price: :ASC)
  end
end
