Rails.application.routes.draw do
  resources :rewards
  resources :saving_exps
  resources :group_members
  resources :groups
  resources :fixed_exps
  resources :receipts
  resources :cards
  # get 'home/index'
  root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
