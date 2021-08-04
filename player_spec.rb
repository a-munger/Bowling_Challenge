require "rspec"
require_relative "player.rb"
require_relative "player_data.rb"


describe Player do
  it "should have a name param" do
    p = Player.new(name: "Test Player")
    expect(p.name).to eql("Test Player")
  end
  it "should have an array of frames" do
    p = Player.new(frames: [
      OpenStruct.new(frame: 1,  ball_1: 8,  ball_2: 2),
      OpenStruct.new(frame: 2,  ball_1: 3,  ball_2: 0),
      OpenStruct.new(frame: 3,  ball_1: 10, ball_2: 0),
      OpenStruct.new(frame: 4,  ball_1: 10, ball_2: 0),
      OpenStruct.new(frame: 5,  ball_1: 0,  ball_2: 0),
      OpenStruct.new(frame: 6,  ball_1: 9,  ball_2: 1),
    ])
    expect(p).to respond_to(:frames)
    expect(p.frames).to be_an(Array)
    expect(p.frames.count).to eql(6)
  end
  context "player#calculate_score" do

    it "should be able to calculate Bryan's given score table" do
      bryan = PLAYER_DATA[0]
      expect(bryan.frames.count).to equal(10)
    end

    it "should be able to calculate Jesse's given score table" do
      jesse = PLAYER_DATA.find { |v| v.name == "Jesse" }
      expect(jesse.calculate_score).to eql(191)
    end

    it "should be able to calculate Riley's given score table" do
      riley = PLAYER_DATA.find { |v| v.name == "Riley" } # get Riley from PLAYER_DATA source, then calculate
      # Riley bowled a perfect game
      expect(riley.calculate_score).to eql(300)
    end

    it "should be able to calculate Bella's given score table" do
      bella = PLAYER_DATA.find { |v| v.name == "Bella" }
      expect(bella.calculate_score).to eql(274)
    end

    it "should be able to calculate in-progress game for a new player" do
		luca = PLAYER_DATA.find { |v| v.name == "Luca" }
		expect(luca.calculate_score).to eql(274)
	end

  end
end
