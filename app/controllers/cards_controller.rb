class CardsController < ApplicationController
	
	def deal
		if params[:cards]
			@cards = params[:cards].to_i
			@card = []
			@cards.times do
				@card = @card, Card.create(card_params)
			end
		else
			@card = Card.create(card_params)
		end
		respond_to do |format|
			format.json { render :json =>  @card }
		end
	end
		

	def card_params
		free = -1

		col1 = (1...15).to_a
		col2 = (16...30).to_a
		col3 = (31...45).to_a
		col4 = (46...60).to_a
		col5 = (61...75).to_a

		col1 = col1.sample(5).sort
		col2 = col2.sample(5).sort
		col3 = col3.sample(5).sort
		col3[2] = free
		col4 = col4.sample(5).sort
		col5 = col5.sample(5).sort

		cols = col1, col2, col3, col4, col5

		colshash = Hash.new
		colshash[:columns] = cols
		colshash
	end

end
