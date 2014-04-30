CommitteeApp::Application.routes.draw do
  root "welcome#index"

  devise_for :users

  resources :users
  resources :sessions, only: [:new, :create]
  resources :problems, only: [:create, :index, :show]
end
