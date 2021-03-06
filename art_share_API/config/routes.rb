Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , except: [:new, :edit]
  resources :artworks, except: [:new, :edit]
  resources :artwork_shares, only: [:create, :destroy]

  resources :users do
    resources :artworks, only: :index
  end



#  get '/users', to: 'users#index'
#  post '/users', to: 'users#create'
#  get '/users/new', to: 'users#new', as: 'new_user'
#  get '/users/:id', to: 'users#show', as: 'user'
#  patch '/users/:id', to: 'users#update'
#  put '/users/:id', to: 'users#update'
#  delete '/users/:id', to: 'users#destroy'
#  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

end
