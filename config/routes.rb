Rails.application.routes.draw do
  resources :news, path: "noticias"
  resources :quotes, path: "presupuestos"
  resources :projects, path: "proyectos"
  resources :services, path: "servicios"
  get "empresa", to: "pages#company", as: :pages_company
  get "pages/company", to: redirect("/empresa")

  # Legal compliance pages (LSSI-CE / GDPR / LOPDGDD)
  get "aviso-legal",            to: "pages#aviso_legal",            as: :aviso_legal
  get "politica-privacidad",    to: "pages#politica_privacidad",    as: :politica_privacidad
  get "politica-cookies",       to: "pages#politica_cookies",       as: :politica_cookies
  get "terminos-y-condiciones", to: "pages#terminos",               as: :terminos
  get "contact", to: "contact#index", as: :contact

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
