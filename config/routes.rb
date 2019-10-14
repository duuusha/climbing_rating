Rails.application.routes.draw do
  get 'climbing_gyms/index'
  get 'climbing_gyms/show'
  get 'climbing_gyms/new'
  get 'climbing_gyms/create'
  root "countries#index"
  resources :countries do
    resources :states do
      resources :cities
    end
  end
  resources :climbing_gyms

end