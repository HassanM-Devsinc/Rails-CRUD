Rails.application.routes.draw do
  root "pages#home"
  resources :products, except: [:show]
end
