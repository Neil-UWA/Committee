CommitteeApp::Application.routes.draw do
  root "welcome#index"

  devise_for :users

  resources :sessions, only: [:new, :create]
  resources :problems, only: [:new, :create, :index]
end
