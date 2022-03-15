Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Movies
get "/movies" => "movies#"
post "/movies" => "movies#"
get "/movies" => "movies#"
patch "/movies" => "movies#"
delete "/movies" => "movies#"

  #Actors
get "/actors" => "actors#"
post "/actors" => "actors#"
get "/actors" => "actors#"
patch "/actors" => "actors#"
delete "/actors" => "actors#"

end
