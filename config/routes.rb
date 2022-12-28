Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

  root "articles#index"  #car root est un point d acces particuler
# on peut mettre resources :articles a la place de tout ca
  resources :articles
  # get "/articles/new", to: "articles#new"
  
  # get "/articles", to: "articles#index"
  # post "/articles", to: "articles#create"

  # get "/articles/:id/edit", to: "articles#edit", as: 'article_edit'
  # patch "/articles/:id", to: "articles#update"  # put n a pas l air ok

  # delete "/articles/:id", to: "articles#destroy"

  # get "/articles/:id", to: "articles#show", as: :article
end
