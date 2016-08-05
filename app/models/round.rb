class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  def check(guess)

  end

# def play_round(hand)
#   while !hand.empty?
#     card = hand.sample

#     if card.answer == guess.content
#       # guess.correct = true
#     else
#       @round.wrong << hand.delete(card)
#     end
#     hand.delete(card)
#   end
# end

# if wrong.empty?
#   # game over
# else
#   hand = wrong
#   play_round(hand)
# end
end
