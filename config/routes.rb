Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :sessions, except: [:new, :edit]
      resources :users, except: [:new, :edit]
      resources :user_sessions
    end
  end
end
