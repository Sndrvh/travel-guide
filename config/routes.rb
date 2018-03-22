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

  # root to: 'locations#show'
  # get '/locations/morioka', to: "locations#show", as: "locations"
end
