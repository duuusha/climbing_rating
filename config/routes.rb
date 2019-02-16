Rails.application.routes.draw do
  root "countries#index"
  get "countries" => "countries#index"
  get "countries/:id" => "countries#show", as: "country"
end
