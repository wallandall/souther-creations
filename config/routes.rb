Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
end
