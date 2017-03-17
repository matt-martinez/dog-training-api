Rails.application.routes.draw do
  resources :behaviors, only: [:index, :show]
  resources :comments, only: [:index, :show, :update, :destroy]
  resources :posts, only: [:index, :show, :update, :destroy]
  resources :users, only: [:create, :show] do
    collection do
      post '/login', to: 'users#login'
    end
  end
  get 'posts/:id/comments', to: 'comments#commentsByPost'
  get 'users/:id/comments', to: 'comments#commentsByUser'
  post 'meetups/search', to: 'meetups#search'
  post 'posts/:id/comments', to: 'comments#createComment'
  post 'users/:id/posts', to: 'posts#createPost'
end

# Prefix Verb   URI Pattern                   Controller#Action
#   behaviors GET    /behaviors(.:format)          behaviors#index
#    behavior GET    /behaviors/:id(.:format)      behaviors#show
#    comments GET    /comments(.:format)           comments#index
#     comment GET    /comments/:id(.:format)       comments#show
#             PATCH  /comments/:id(.:format)       comments#update
#             PUT    /comments/:id(.:format)       comments#update
#             DELETE /comments/:id(.:format)       comments#destroy
#       posts GET    /posts(.:format)              posts#index
#        post GET    /posts/:id(.:format)          posts#show
#             PATCH  /posts/:id(.:format)          posts#update
#             PUT    /posts/:id(.:format)          posts#update
#             DELETE /posts/:id(.:format)          posts#destroy
# login_users POST   /users/login(.:format)        users#login
#       users POST   /users(.:format)              users#create
#        user GET    /users/:id(.:format)          users#show
#             GET    /posts/:id/comments(.:format) comments#commentsByPost
#             GET    /users/:id/comments(.:format) comments#commentsByUser
#             POST   /posts/:id/comments(.:format) comments#createComment
#             POST   /users/:id/posts(.:format)    posts#createPost
