Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

  get 'edit/:id', to: 'movies#edit'
  get 'show_by_director/:id', to: 'movies#show_by_director', as: :show_by_director
end
