Rails.application.routes.draw do
  resources :news, path: "noticias"
  resources :quotes, path: "presupuestos"
  resources :projects, path: "proyectos"
  resources :services, path: "servicios"
  get "empresa", to: "pages#company", as: :pages_company
  get "pages/company", to: redirect("/empresa")
  get "contact", to: "contact#index", as: :contact

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
