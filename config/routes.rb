Rails.application.routes.draw do
  resources :products
  resources :categories
  root 'simple_pages#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
end
