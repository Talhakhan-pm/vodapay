Rails.application.routes.draw do
  resources :merchants do
    resources :basic_verifications
  end
  devise_for :users, controllers: { registrations: "registrations" }

  root "static_pages#index"

  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/pricing'
end
