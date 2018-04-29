Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :comments
  end
  resources :users, only: [ :index, :show ] do
    member do
      get :follow
      get :unfollow
    end
  end
end
