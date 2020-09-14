Rails.application.routes.draw do
  root to: "spendings#index"

  resources :spendings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
