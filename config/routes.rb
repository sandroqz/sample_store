SampleStore::Application.routes.draw do
  resources :products
  resource :shopping_cart
  namespace :admin do
    resources :products
  end
  root to: "products#index"
end
