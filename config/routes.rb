Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do
    resources :status, only: [:update]
    resources :comments, only: [:create]
  end
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create]
  delete '/logout' => 'sessions#destroy'
end
