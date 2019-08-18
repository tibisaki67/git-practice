Rails.application.routes.draw do


  get 'homes/top'
  get 'homes/about'

  root 'users#show'

  get '/users/sign_out', to: 'homes#top'

  devise_for :users

resources :books, only: [:new, :create, :show, :index, :destroy, :edit, :update] do
end


    resources :users, only: [:show, :edit, :index, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
