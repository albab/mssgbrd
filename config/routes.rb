Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
  	resources :comments
  end
  post '/add_comment' => 'comments#create'
  get '/add_post' => 'posts#add'
  post '/save_post' => 'posts#create'
end
