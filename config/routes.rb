Rails.application.routes.draw do
  require 'sidekiq/web'

  mount Sidekiq::Web, at: '/sidekiq'

  resources :report1, only: :index
  resources :report2, only: :index
end
