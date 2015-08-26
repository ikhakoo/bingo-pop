# Bingo-Pop

Install Instructions

	bundle install
	rake db:create db:migrate
	rails s

To ask for 1 card:

	curl "http://localhost:3000/deal"

To ask for multiple cards:

	curl "http://localhost:3000/deal?cards=#" // where # represents a number ex. 3







