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
  @next_card_id = random_card_id

  if @next_card_id
    erb :'cards/feedback'
  else
    current_round.correct_firsties = counter_sheet
  end

  # finish me off!
end

