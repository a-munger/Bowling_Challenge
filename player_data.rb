require "ostruct"

PLAYER_DATA = [
  Player.new(name: "Bryan", frames: [
    OpenStruct.new(frame: 1,  ball_1: 8,  ball_2: 2),
    OpenStruct.new(frame: 2,  ball_1: 3,  ball_2: 0),
    OpenStruct.new(frame: 3,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 4,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 5,  ball_1: 0,  ball_2: 0),
    OpenStruct.new(frame: 6,  ball_1: 9,  ball_2: 1),
    OpenStruct.new(frame: 7,  ball_1: 5,  ball_2: 5),
    OpenStruct.new(frame: 8,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 9,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 10, ball_1: 10, ball_2: 10, ball_3: 10)
  ]),
  Player.new(name: "Jesse", frames: [
    OpenStruct.new(frame: 1,  ball_1: 0, ball_2: 0),
    OpenStruct.new(frame: 2,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 3,  ball_1: 0, ball_2: 10),
    OpenStruct.new(frame: 4,  ball_1: 4, ball_2: 6),
    OpenStruct.new(frame: 5,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 6,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 7,  ball_1: 5, ball_2: 5),
    OpenStruct.new(frame: 8,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 9,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 10, ball_1: 10, ball_2: 2, ball_3: 8)
  ]),
  Player.new(name: "Riley", frames: [
    OpenStruct.new(frame: 1,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 2,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 3,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 4,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 5,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 6,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 7,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 8,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 9,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 10, ball_1: 10, ball_2: 10, ball_3: 10)
  ]),
  Player.new(name: "Bella", frames: [
    OpenStruct.new(frame: 1,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 2,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 3,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 4,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 5,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 6,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 7,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 8,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 9,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 10, ball_1: 9, ball_2: 1, ball_3: 5)
  ]),
  Player.new(name: "Luca", frames: [
    OpenStruct.new(frame: 1,  ball_1: 0, ball_2: 0),
    OpenStruct.new(frame: 2,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 3,  ball_1: 0, ball_2: 10),
    OpenStruct.new(frame: 4,  ball_1: 4, ball_2: 6),
    OpenStruct.new(frame: 5,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 6,  ball_1: 10, ball_2: 0),
    OpenStruct.new(frame: 7,  ball_1: 5, ball_2: 5)
  ])
]
