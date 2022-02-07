Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'category', to: 'search#by_category'
    end
  end
end
