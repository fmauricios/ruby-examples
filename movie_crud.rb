movies = {deadpool: 4}

puts "-- add"
puts "-- update"
puts "-- display"
puts "-- delete"

choise = gets.chomp

case choise
when 'add'
  puts "Enter a new movie"
  title = gets.chomp.to_sym

  if movies[title].nil?
    puts "Enter the movie rating (0..4)"
    rating = gets.chomp.to_i
    movies[title] = rating
  else
    puts "The movie already exists!"
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (0 to 4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Movie has been updated."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error!"
end
