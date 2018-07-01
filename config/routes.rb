Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'simple_pages#landing_page'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
end
