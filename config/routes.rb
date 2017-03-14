Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :update, :destroy]
  resources :posts, only: [:index, :show, :update, :destroy]
  resources :users, only: [:create, :show] do
    collection do
      post '/login', to: 'users#login'
    end
  end
  get 'posts/:id/comments', to: 'comments#commentsByPost'
  get 'users/:id/comments', to: 'comments#commentsByUser'
  post 'posts/:id/comments', to: 'comments#createComment'
  post 'users/:id/posts', to: 'posts#createPost'
end
