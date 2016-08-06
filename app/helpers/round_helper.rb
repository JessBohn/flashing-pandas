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
    correct = current_round.guesses.where(correct: true).count
    current_round.correct_firsties = correct
  end

  def no_false_shit?
    current_round.guesses.where(correct: false).empty?
  end

  def grab_false_shit
    current_round.guesses.where(correct: false).pluck(:card_id)
  end

  def false_shit_sampler
    grab_false_shit.sample
  end

  def second_time_round
    round_guesses.count >= round_cards.count
  end

  def firsties
    current_round.correct_firsties
  end
end
