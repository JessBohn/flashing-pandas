get '/decks/:id' do
  round = Round.create(deck_id: params[:id], user_id: current_user)
  session[:round_id] = round.id
  # start round redirect to first card
end

get '/cards/:id' do
  # @card = Card.find params[:id]
  erb :'cards/show'
end

post '/guesses' do
  # current_round.something params[:guess]
  erb 'cards/feedback'
end

