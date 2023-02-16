Rails.application.routes.draw do
  devise_for :users
  get "my_portfolio", to: "users#my_portfolio"

  root "welcome#index"
  get "/api", to: "welcome#api"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
end
