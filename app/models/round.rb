class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses


  def wrong
    @wrong ||= []
  end
end
