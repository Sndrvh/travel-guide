# Rails.application.routes.draw do
#   root to: 'pages#locations'
#   get 'locations', to: 'pages#locations'
# end

Rails.application.routes.draw do

  get '/locations', to: 'locations#index', as:'locations'
  get '/locations/new', to: 'locations#new', as: 'new_location'
  post 'locations', to: 'locations#create'
  get '/locations/:id', to: 'locations#show', as: 'location'
  get '/locations/:id/edit', to: 'locations#edit', as: 'edit_location'
  patch 'locations/:id',to: 'locations#update'
  delete 'locations/:id', to: 'locations#destroy'

  get '/activities', to: 'activities#index', as:'activities'
  get '/activities/new', to: 'activities#new', as: 'new_activity'
  post 'activities', to: 'activities#create'
  get '/activities/:id', to: 'activities#show', as: 'activity'
  get '/activities/:id/edit', to: 'activities#edit', as: 'edit_activity'
  patch 'activities/:id',to: 'activities#update'
  delete 'activities/:id', to: 'activities#destroy'
  # root to: 'locations#show'
  # get '/locations/morioka', to: "locations#show", as: "locations"
end
