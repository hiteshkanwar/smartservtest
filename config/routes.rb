Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root :to => "products#index"

  namespace :api do 
    namespace :v1 do 
      resources :products do
        collection do
          get 'fetch_data'
          get 'search'
        end
      end
    end 
  end 
end
