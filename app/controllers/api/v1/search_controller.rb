module Api
    module V1
        class SearchController < V1Controller

            def all_categories 
                render json: json_structure_categories(Category.get_all_categories())
            end

            def by_category
                products = Category.get_products_by_category(params[:category]) 
                render json: products
            end

            def by_name
                products = Product.get_products_by_name(params[:search])
                render json: json_structure(products)
            end

            private

            def json_structure(products)
                array = []
                products.each do |product|
                    h = {}
                    h['id'] = product.id
                    h['name'] = product.name
                    h['url_image'] = product.url_image
                    h['price'] = product.price
                    h['discount'] = product.discount
                    h['category'] = product.category
                    array.push(h)
                end
                array
            end

            def json_structure_categories(categories)
                array = []
                categories.each do |category|
                    cat = {}
                    cat['id'] = category.id
                    cat['name'] = category.name
                    cat['products'] = category.products
                    array.push(cat)
                end
                array
            end
        end
    end
end