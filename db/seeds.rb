# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


movies = [{:title => 'Avengers', :rating => 'R', :release_date => '23 Sept 2013'},
	  {:title => 'Ted', :rating => 'PG', :release_date => '20 Dec 2012'},
	  {:title => 'Titanic', :rating => 'PG-13', :release_date => '14 Sept 1990'}
]

movies.each do |movie|
 Movie.create!(movie)
end
