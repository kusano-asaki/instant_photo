Rails.application.routes.draw do
  get 'sessions/new'
 resources :pictures do
   collection do
     post :confirm
   end
 end
 resources :users, only: [:new, :show, :edit, :create, :update]
 resources :sessions, only: [:new, :create, :destroy]
end
