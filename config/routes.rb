Rails.application.routes.draw do
  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'    #new must go before show so it can create an ID for the page
  post '/recipes' => 'recipes#create'

  get '/recipes/:id' => 'recipes#show'

  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
