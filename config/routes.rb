Rails.application.routes.draw do

  resources :users
  resources :employees
  get 'home',to: 'welcome#home'
  get 'about', to: 'welcome#about'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
