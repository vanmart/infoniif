Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins
  devise_for :users #, controllers: { sessions: 'users/sessions' }

  # devise_scope :admin do
  #   authenticated :admin do
  #     root to: RailsAdmin::Engine, as: :authenticated_root
  #   end

  #   unauthenticated :admin do
  #     root to: "home#index", as: :unauthenticated_root
  #   end
  # end

  root 'home#index'
end
