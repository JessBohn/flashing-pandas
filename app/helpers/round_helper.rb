helpers do
  def current_round
    Round.find_by_id session[:round_id]
  end

  def round_cards
    current_round.deck.cards
  end

  def round_guesses
    current_round.guesses
  end

  def check(guess)
    if guess.content.downcase == guess.card.answer.downcase
      guess.correct = true
      guess.save
    end
  end

  def random_card_array
    round_cards.pluck(:id) - round_guesses.pluck(:card_id)
  end

  def random_card_id
    random_card_array.sample
  end

  def counter_sheet
    current_round.guesses.where(correct: true).count
  end
end
