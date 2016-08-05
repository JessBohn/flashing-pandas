# require_relative '../spec_helper'

# describe User do 
# 	describe 'associations' do
# 		before(:each) do 
# 			@user = User.create!(name: 'Kimberly')
# 			@round1 = Round.create!(user_id: @user )
# 			@round2 = Round.create!(user_id: @user )
# 		end
# 		it "returns an array of the round the user has played" do
# 			expect(@user.rounds).to match_array [@round1, @round2]
# 		end
# 	end
# end