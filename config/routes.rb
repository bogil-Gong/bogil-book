Rails.application.routes.draw do
  get 'users/my_posts'

  get 'users/my_friends'

  devise_for :users, :controllers => {
    :registraions => "user/registraions"
  }
  resources :posts
  root 'page#home'
  get 'my_friends', to: "users#my_friends"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
