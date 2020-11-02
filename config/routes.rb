Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:new, :create, :show]
  resources :destinations, only: [:show]
  resources :posts, only: [:new, :create, :show, :edit, :update]
  patch "/posts/:id/like", to: "posts#like", as: "likes"
end
