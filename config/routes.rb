Rails.application.routes.draw do
  root 'sessions#new'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'

  get 'home' => 'user#home'


  resources :comments
  resources :users
  resources :posts do
    resources :comments
  end

  get 'comment' => 'comments#show'
  get 'edit_comment' => 'comments#edit'
  post 'edit_comment' => 'comments#edit'
  get 'new_comment' => 'comments#new'
  delete 'delete_comment' => 'comments#destroy'
  get 'post' => 'posts#show'
  get 'users' => 'users#index'
  post 'admin' => 'users#admin'
  get 'admin' => 'users#admin'



end
