Rails.application.routes.draw do
  root "countries#index"
  resources :countries do
    resources :states do
      resources :cities
    end
  end
end