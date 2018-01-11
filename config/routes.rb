Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  root to: 'posts#index'
  resources :posts do
    resources :replies
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
