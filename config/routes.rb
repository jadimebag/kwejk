Rails.application.routes.draw do
  devise_for :admins

  resources :mems do
    collection do
      get 'my'
      get 'inactive'

    end

    member do
      get 'description'

    end
  end


  get 'home/index' => 'home#index'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mems#index'
end
