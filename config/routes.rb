Rails.application.routes.draw do
  root "countries#index"
  resources :countries do
    resources :states do
      resources :cities
    end
  end
  resources :climbing_gyms

  namespace 'api' do
    get 'countries', to: 'locations#get_countries'
    post 'countries', to: 'locations#get_countries'

    get 'states', to: 'locations#get_states'
    post 'states', to: 'locations#get_states'

    get 'cities', to: 'locations#get_cities'
  end
end