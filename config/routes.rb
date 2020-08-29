Rails.application.routes.draw do
root to: 'rooms#show'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
mount ActionCable.server => '/cable'
  get 'address/show'
  root to: 'other_pages#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  devise_scope :user do
    get 'my_page', to: 'users/registrations#my_page', as: 'my_page'
    get  "user_favorite" , to: "users/registrations#user_favorite", as: 'user_favorite'
  end

  resources :favorites, only: [:create, :destroy]

  resources :articles do
    collection do
      post :confirm
      patch :confirm
    end
  end

  resources :articles do
    member do
      post :confirm
      patch :confirm
    end
  end

  resources :articles do
    resources :comments
  end

end
