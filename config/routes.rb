Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, param: :username, only: [:show]
    resources :success_stories, only: [:index]
  end
end
