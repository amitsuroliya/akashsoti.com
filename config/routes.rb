AkashsotiCom::Application.routes.draw do
  get "sign_in" => "users#sign_in", as: "backdoor"
  root to: "home#index"
  resources :users
end