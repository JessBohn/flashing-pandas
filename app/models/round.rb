class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  def wrong
    @wrong ||= []
  end

  def hand
    @hand ||= [self.deck.cards]
  end

  def check(guess)
    # IF hand.empty? && wrong.empty?
      # game over
    # ELSE
      # IF guess is correct
        # guess.correct = true
      # ELSE
        # wrong << hand.delete(guess.card)
      # END
      # hand.delete(guess.card)
      # hand.sample
    # END
  end


# def play_round(hand)
#   while !hand.empty?
#     card = hand.sample


#   end
# end

# if wrong.empty?
#   # game over
# else
#   hand = wrong
#   play_round(hand)
# end
end
