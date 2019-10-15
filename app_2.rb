require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "
------------------------------------------------
|WELCOME ON THE FUNNIER GAME YOU EVER PLAYED ! |
|The goal is to be the last survivor !         |

_+      
`,`                        // `--------' |  \+/  |   `,`
`,`                       \\\_|   THP  |_| _<=>_ |   `,`
`,`                           `--------' 0/ \\ / o=o  `,`
`,`                                     \\\/\\ ^ /`0   `,`
`,`                                     || /_^_\     `,`
`,`                                     || || ||     `,`
`,`                        _____________||_d|_|b____
-------------------------------------------------
"

puts "Hey you, what's the name of your player?"
your_player = gets.chomp
player1 = HumanPlayer.new(your_player)

enemy1 = Player.new("Josiane")
enemy2 = Player.new("José")

enemies = [enemy1,enemy2]

binding.pry
