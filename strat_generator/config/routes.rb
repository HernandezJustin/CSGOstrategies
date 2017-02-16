Rails.application.routes.draw do
  devise_for :users
  get '/' => 'strategies#index'
end
