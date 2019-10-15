require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "
                  ------------------------------------------------
                   |WELCOME ON THE FUNNIER GAME YOU EVER PLAYED ! |
                   |    The goal is to be the last survivor !     |


                          !   _______  _  __ _____              !
               !          |>>|__   __|| |_| |  __\\ |>>>        !
               |>>>       |>>   | |   | ___ | |__/  |>>>        | >>>
               |          |>>   |_|   |_| |_| |--   |>>>        |
              .|.         |_________________________|          .|.
            /     \\      |WWWWWWWWWWWWWWWWWWWWWWWWW|        /     \\     
          /        \\     |    )~~~~~~~~~~~~~~~(    |      /         \\               
        /           \\    |   (                 )   |    /             \\    
      /              \\   |   )                 (   |  /                 \\    
     #################### |  (                   )  | WWWWWWWWWWWWWWWWWWWW
     |[ ] [ ] [] [ ] [ ]| |  )                   (  | |/\/\/\/\/\/\/\/\/\|
     | |   |  /\  |   | | | (                     ) | | |   |  /\  |   | | 
     | |   | /  \ |   | | |=<_____________________>=| | |   | /  \ |   | |
     | |   ||    ||   | | | )                     ( | | |   ||    ||   | |
     | |   ||    ||   | | |(!!!!!!!!!!!!!!!!!!!!!!!)| | |   ||    ||   | |
     | |   ||____||   | | |)_| |___| |___| |___| |_(| | |   ||____||   | |
     |_|___||    ||___|_| |(_| |___| |___| |___| |_)| |_|___||    ||___|_|    
                          |)_|_|___|_|___|_|___|_|_(|lc



                   -------------------------------------------------
"

puts "\nHey you, what's the name of your player?"
your_player = gets.chomp
player1 = HumanPlayer.new(your_player)

enemy1 = Player.new("Josiane")
enemy2 = Player.new("José")

enemies = [enemy1,enemy2]

  while player1.life_points >0 && (enemy1.life_points > 0 || enemy2.life_points >0)
    puts "\nHere's your health points :"
    player1.show_state
    puts " \nWhat action do you want to perform?"
    puts "a - Search a better weapon"
    puts "s-  Search a health pack"
    puts "\n Attack a player next to you:"
    print "0 -" 
    enemy1.show_state
    print "1 -" 
    enemy2.show_state
    
    choice = gets.chomp
 

  case choice
    when "a"
      player1.search_weapon
    when "s"
      player1.search_health_pack
    when "0"
      player1.attacks(enemy1)
    when "1"
      player1.attacks(enemy2)
    end
    puts "\nThe enemies are attacking you ! o()xxxx[{::::::::::::::::::> "
    enemies.each {|enemy| enemy.attacks(player1) if enemy.life_points > 0 }
  end 
  

binding.pry
