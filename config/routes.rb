Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      post '/signup', to: 'users#create'
      post '/signin', to: 'auth#login'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :prescriptions
    end
  end
  namespace :api do
    namespace :v1 do
      resources :brand_names
    end
  end
  namespace :api do
    namespace :v1 do
      resources :generics
    end
  end

  namespace :api do
    namespace :v1 do
      resources :alternatives
    end
  end

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
end
