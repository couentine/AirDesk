Rails.application.routes.draw do
  resources :rentals
  get 'welcome/index'
  get 'users/show'
  devise_for :admins, path: 'admins'
  devise_for :buyers, path: 'buyers'
  devise_for :owners, path: 'owners'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
