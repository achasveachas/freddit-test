Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'conversations/index'

  get 'conversations/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'conversations#index'

  resources :conversations do
    resources :comments
  end
  
  resources :comments do
    resources :comments
  end
end
