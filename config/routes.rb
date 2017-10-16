Rails.application.routes.draw do
  resources :rewards
  resources :savings
  resources :group_members
  resources :groups
  resources :fixed_exps
  resources :receipts
  resources :small_cates
  resources :big_cates
  resources :cards
  resources :users
  # get 'home/index'
  root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
