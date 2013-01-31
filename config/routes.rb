SampleStore::Application.routes.draw do
  resources :products
  resource :shopping_cart
  root to: "products#index"
end
