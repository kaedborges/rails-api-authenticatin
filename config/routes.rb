Rails.application.routes.draw do

  namespace :Api do
    namespace :V1 do
      resources :tudos
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
