RailsBlog::Application.routes.draw do

  resources :post_tags

  resources :tags

  resources :users
  resources :posts

end
