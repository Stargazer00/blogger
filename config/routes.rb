Rails.application.routes.draw do
  resources :pages
  resources :articles do
    resources :comments
    resources :attachments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [:new, :create, :destroy ]
  resources :pages
  
  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  get '/:id' => 'pages#show'
  
  root to: 'articles#index'
end
