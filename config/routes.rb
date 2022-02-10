Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  namespace :api do
    namespace :v1 do
      get 'all_categories', to: 'search#all_categories'
      get 'by_category/:category', to: 'search#by_category'
      get 'by_name/:name', to: 'search#by_name'
      get 'by_price/:price1/:price2', to: 'search#by_price'
    end
  end
end
