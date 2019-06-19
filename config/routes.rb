Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'complete_modal/:id', to: 'pages#write_modal', as: :write_modal
  resources :meals, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
