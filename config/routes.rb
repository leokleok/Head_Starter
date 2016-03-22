Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :questions
  resources :answers


root 'welcome#index'
end
