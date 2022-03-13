Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "pages#index"
  resources :logins
  resources :bookmarks
  resources :comments
  resources :readers
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
