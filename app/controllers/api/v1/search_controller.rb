module Api
    module V1
        class SearchController < V1Controller

            def by_category
                products = 
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
                    array.push(h)
                end
                array
            end
            
        end
    end
end