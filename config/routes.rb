Rails.application.routes.draw do
  root "countries#index"
  # get "countries" => "countries#index"
  # get "countries/new" => "countries#new", as: "new_country"
  # get "countries/:id" => "countries#show", as: "country"
  # get "countries/:id/edit" => "countries#edit", as: "edit_country"
  # patch "countries/:id" => "countries#update"

  resources :countries
end
