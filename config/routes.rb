Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, param: :username, only: [:show] do
      member do
        get 'current_objective', action: :current_objective
      end
    end
    resources :success_stories, only: [:index] do
      collection do
        get '/:user_id/following', action: :personal_feed_stories
        get '/:user_id/suggested', action: :suggested_stories
        get '/:user_id/featured', action: :featured_stories
      end
    end

    post 'authenticate', to: 'authentication#authenticate'
  end
end
