Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: 'admins/registrations'}
  devise_for :users

  resources :mems do
      collection do
        get 'my' => 'mems#my'
        # get 'inactive'
        get 'my_rates'
      end
    end



  get 'home/index' => 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mems#index'
end
