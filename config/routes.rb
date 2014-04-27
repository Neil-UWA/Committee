CommitteeApp::Application.routes.draw do
  root "welcome#index"
  resources :sessions, only: [:new, :create]
  resources :users, only: [:new, :create, :show]
  resources :problems, only: [:new, :create, :index]
end
