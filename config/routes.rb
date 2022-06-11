Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#index"
  match "pages/data", :to => "pages#data", :as => "data", :via => "get"
  match "pages/db_action", :to => "pages#db_action", :as => "db_action", :via => "get"

end
