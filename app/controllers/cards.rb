get '/decks/:id' do
  round = Round.create( deck_id: params[:id], user_id: current_user.id )
  session[:round_id] = round.id
  # start round redirect to first card
end

get '/cards/:id' do
  @card = Card.find params[:id]
  erb :'cards/show'
end

post '/cards/:id/guesses' do
  # current_round.something params[:guess]
  @guess = Guess.new params[:guess]
  @guess.card = Card.find params[:id]
  # pass round the guess
  # round returns next card --> @next_card
  erb 'cards/feedback'
end

