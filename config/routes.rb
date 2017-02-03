Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ADD HTML ROUTES HERE
  resources :recipes

  # API ROUTES
  scope module: 'api' do
    namespace :v1 do
      resources :recipes
    end
  end
end
