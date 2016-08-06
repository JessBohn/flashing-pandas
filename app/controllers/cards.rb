get '/decks/:id' do
  round = Round.create deck_id: params[:id] # current user shit )
  session[:round_id] = round.id
  deck = Deck.find_by_id params[:id]
  card = deck.cards.sample
  redirect "/cards/#{card.id}"
end

get '/cards/:id' do
  @card = Card.find params[:id]
  erb :'cards/show'
end

post '/cards/:id/guesses' do
  # current_round.something params[:guess]
  @guess = Guess.new params[:guess]
  @guess.card = Card.find params[:id]
  @guess.round_id = current_round.id

  check(@guess)
  @next_card_id = random_card_id unless second_time_round

  if @next_card_id
    erb :'cards/feedback'
  else
    counter_sheet if firsties.nil?
    if no_false_shit? && second_time_round
      current_round.save
      erb :round_results
    else
      until grab_false_shit.empty?
        @next_card_id = false_shit_sampler
        erb :'cards/feedback'
      end
    end
  end
end

