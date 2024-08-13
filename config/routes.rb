Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  resources :users, only: [ :show, :edit, :update]

  #検索機能のルーティング
  get "search" => "searches#search"

  resources :caffes, only: [:index, :new, :create, :show, :edit, :destroy, :update] do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
