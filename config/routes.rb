AkashsotiCom::Application.routes.draw do
  get "backdoor" => "sessions#new", as: "backdoor"

  root to: "home#index"
  resources :sessions
end