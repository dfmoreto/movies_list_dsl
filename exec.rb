require_relative "./lib/movies_list"

MoviesList.start do
  movie "Intocáveis", :comedy
  movie "Superbad", :comedy
  feature_film "Star Wars", :fantasy, ["Luke", "Darth Vader"]

  print_list
end