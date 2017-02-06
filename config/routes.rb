Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
  	resources :comments
  end
  post '/add_comment' => 'comments#create'
end
