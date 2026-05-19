Rails.application.routes.draw do
  resources :news
  resources :quotes
  resources :projects
  resources :services
  get "pages/company"
  get "contact", to: "contact#index", as: :contact

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
