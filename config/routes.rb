Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/one_actor" => "Actors#actor_by_id"
  # get "/movie/:id" => "Movies#one_movie"

  get "/movies" => "Movies#all_movies"
  get "/movies/:id" => "Movies#one_movie"
end
