Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get "/one_actor" => "actors#actor_by_id"
  get "/movies" => "movies#all_movies"
  get "/movies/:id" => "movies#one_movie"
end
