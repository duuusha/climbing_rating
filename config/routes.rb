Rails.application.routes.draw do
  root "countries#index"
  resources :countries do
    resources :states
  end
end
