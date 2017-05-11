Rails.application.routes.draw do
  resources :articles do
    resources :comments
    resources :attachments
  end
  resources :tags
  
  root to: 'articles#index'
end
