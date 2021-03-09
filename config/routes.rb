Rails.application.routes.draw do
  resources :acta
  get 'home/about'
  root 'home#index'
  get 'home/graphics'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
