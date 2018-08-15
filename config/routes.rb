Rails.application.routes.draw do
  # instead of post '/api/sessions', use this route
  post 'user_token' => 'user_token#create'
  namespace :v1 do
    post "/users" => "users#create"

    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    get "/posts/:id" => "posts#show"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#destroy"
  end
end
