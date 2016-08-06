# require_relative '../spec_helper'

# describe Round do 
# 	describe 'associations' do
# 		before(:each) do 
# 			@user = User.create!(name: 'Kimberly')
# 			@round1 = Round.create!(user_id: @user )
# 			@round2 = Round.create!(user_id: @user )
# 			@deck = Deck.create!(name: 'animals')
# 			@guess1 = Guess.create
# 		end
# 		it "returns the user who played the round" do
# 			expect(@round1.user).to eq (@user)
# 		end
# 		it "returns the deck it belongs to" do
# 			expect(@round1.deck).to eq (@deck)
# 		end
# 		it "returns an array of guesses made during the round" do
# 			expect(@round1.guesses).to match_array [@guess1, @guess2, @guess3]
# 		end
# 	end
# end