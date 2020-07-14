Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root to: 'posts#index'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :posts do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
end
