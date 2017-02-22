Rails.application.routes.draw do
  devise_for :users
  resources :strategies

  namespace :api do
    namespace :v1 do
      resources :strategies
    end
  end
end
