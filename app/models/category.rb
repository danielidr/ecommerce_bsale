class Category < ApplicationRecord
    has_many :products

    def self.get_category_id(name)
        Category.find_by(name: name).id
    end
end
