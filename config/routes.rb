Rails.application.routes.draw do

  devise_for :users #, controllers: { sessions: 'devise/sessions' }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

end
