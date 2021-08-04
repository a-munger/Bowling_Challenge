require_relative "player.rb"
require_relative "player_data.rb"

# TODO:
# Loop through each player
# output their name and final score

 PLAYER_DATA.each do |v|
 	v.calculate_score
 end