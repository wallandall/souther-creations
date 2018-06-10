Rails.application.routes.draw do
  #resources :categories
  #resources :products
  root 'simple_pages#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
end
