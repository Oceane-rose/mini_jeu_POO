require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def perform

puts "
     /\\                   ~~~~
    // \\                 (@THP) 
    || |                  _OS_
    || |                   OS
    || |               ___ OS ___
    || |              |___|| ||__|
    || |                  || |
    || |                  || |
 __ || | __               || |
|___||_|___|              || |
     OS                   || |
     OS                   || |
    _OS_                  || |
   (@THP)                  \\ /
    ~~~~                   \\/


    
"

  player1 = Player.new("Emmanuel")
  player2 = Player.new("Brigitte")

  
    while player1.life_points > 0 && player2.life_points > 0 
    puts "\nHere's the health points of the two players :"
    player1.show_state
    player2.show_state 
    puts "♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠ "

    puts "Let's fight!!!!!"
    player1.attacks(player2)


    if player2.life_points <= 0
      break 
    end
    player2.attacks(player1) 
    puts "♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠♠ "
    end
end 
perform