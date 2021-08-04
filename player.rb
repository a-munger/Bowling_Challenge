class Player
  attr :name, :frames

  # I am now going to assume that the information being passed is complete. i.e. a game with 10 completed frames.

  def initialize(params = {})
    @name   = params[:name]
    @frames = params[:frames]
  end

  def is_strike? (frame)
  	frame.ball_1 == 10
  end

  def calculate_score
    running_total = 0

    @frames.each_with_index do |v, i|
    	# Only expect 2 balls until frame 10 (last)

    	case v.frame
    	when 10
    		if (v.ball_1 == 10) and (v.ball_2 == 10) and (v.ball_3 == 10)
    			running_total += 30
    		elsif (v.ball_1 == 10) and (v.ball_2 == 10) and ((0..9) === v.ball_3)
    			running_total += 20 + v.ball_3
    		elsif (v.ball_1 == 10) and ((v.ball_2 + v.ball_3 == 10) and (0..9) === v.ball_2)
    			running_total += 20
    		elsif ((0..9) === v.ball_1) and (v.ball_1 + v.ball_2 == 10)
    			running_total += 10 + v.ball_3
    		else
    			running_total += v.ball_1 + v.ball_2
    		end
    	when 9
    		if v.ball_1 == 10 and frames[i + 1].ball_1 == 10 and frames[i + 1].ball_2 == 10
    			running_total += 30
    		elsif v.ball_1 == 10 and frames[i + 1].ball_1 == 10 and (0..9) === frames[i + 1].ball_2
    			running_total += 20 + frames[i + 1].ball_2
    		elsif v.ball_1 == 10 and (0..9) === frames[i + 1].ball_1 and (0..9) === frames[i + 1].ball_2
    			running_total += 10 + frames[i + 1].ball_1 + frames[i + 1].ball_2
    		elsif (0..9) === v.ball_1 and v.ball_1 + v.ball_2 == 10
    			running_total += 10 + v.ball_1
    		else
    	 		running_total += v.ball_1 + v.ball_2
    	 	end
    	 else
    		if v.ball_1 == 10 and frames[i + 1].ball_1 == 10 and frames[i + 2].ball_1 == 10
    			running_total += 30
    		elsif v.ball_1 == 10 and frames[i + 1].ball_1 == 10 and (0..9) === frames[i + 2].ball_1
    			running_total += 20 + frames[i + 2].ball_1
    		elsif v.ball_1 == 10 and (0..9) === frames[i + 1].ball_1 and (frames[i + 1].ball_1 + frames[i + 1].ball_2 == 10)
    			running_total += 20
    		elsif v.ball_1 == 10 and (0..9) === frames[i + 1].ball_1 and (0..9) === frames[i + 1].ball_2
    			running_total += 10 + frames[i + 1].ball_1 + frames[i + 1].ball_2
    		elsif (0..9) === v.ball_1 and v.ball_1 + v.ball_2 == 10
    			running_total += 10 + frames[i + 1].ball_1
    		else
    	 		running_total += v.ball_1 + v.ball_2
    	 	end
    	 end
    	
	end
	puts "#{running_total}"
	running_total

  end

end
