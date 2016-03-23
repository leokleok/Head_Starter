Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :questions
  resources :answers do
  member do
    put "like", to: "answers#upvote"
    put "dislike", to: "answers#downvote"
  end
end

root 'welcome#index'
end
