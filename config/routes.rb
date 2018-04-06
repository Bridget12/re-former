Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get "/users/new" => "users#new"
  post "/users" =>"users#create"

  get "/users/edit/:userid" => "users#edit"
  post "/users/:userid" => "users#update"

  get "/users/delete/:userid" => "users#destroy"

end
