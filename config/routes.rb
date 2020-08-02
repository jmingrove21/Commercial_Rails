Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  # registration, session cotroller 관리
 
  root "home#index"
  resources :items do
    collection do
      get :list
    end
  end
  resources :order
  resources :cart
end
