Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/one_actor" => "Actors#actor_by_id"
  get "/one_movie" => "Movies#one_movie"
  get "/all_movies" => "Movies#all_movies"
end
