Rails.application.routes.draw do
  get 'users/new'

 root 'user#index'
 #get "search", controller: 'repo', action:'search'
end
