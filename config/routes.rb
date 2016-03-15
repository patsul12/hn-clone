Rails.application.routes.draw do
  devise_for :authors, :controllers => { registrations: 'registrations' }
  root "posts#index"
  resources :posts
end
