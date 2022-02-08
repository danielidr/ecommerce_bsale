class Category < ApplicationRecord
    has_many :products, foreign_key: :category, class_name: "Product"

    def self.get_products_by_category(name)
        Category.find_by(name: name).products
    end

    def self.get_all_categories()
        Category.all
    end
end
