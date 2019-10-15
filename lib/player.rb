class Player
  attr_accessor :name, :life_points, :damage

  
  def initialize(name) 
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{name} has #{life_points} points left."
  end  

  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0 then 
      puts "The player #{name} has been killed !!
            ---.
           |   |          
        ___|   |___          
   -=  [           ]  =-    
       `---.   .---'         
    __||__ |   | __||__      
    '-..-' |   | '-..-'   
      ||   |   |   ||     
      ||_.-|   |-,_||     
       "
    end
  end

  def attacks(player2)
    puts "The player #{name} is attacking the player #{player2.name} !"
    player2_life = compute_damage 
    puts "It inflicts #{player2_life} points of damage."
    player2.gets_damage(player2_life)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
   #fait appel au initialize de la classe Player
  end

  def show_state
    puts "#{name} has #{life_points} points left and a weapon level #{weapon_level}. Amazing !!"
  end  

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    weapon_level_power = rand(1..6)
    puts "You found a weapon level #{weapon_level_power}."
    if weapon_level_power > @weapon_level then @weapon_level == weapon_level_power
      puts "Yeah man ! The new weapon is better: you keep it!"
    else 
      puts "Daaaaamn, the weapon is not good, keep the old one."
    end
  end 

  def search_health_pack
    health_pack = rand(1..6)
    case health_pack
    when 1
      puts "You did not find anything :("
    when (2..5) 
      @life_points += 50 
      puts "Congrats, you found a +50 points heath pack"
      puts "You have #{@life_points} life points."
      if @life_points > 100 then @life_points = 100
      
      end
    when 6
      @life_points += 80 
      puts "Wooooow, you found a +80 points heath pack"
      puts "You have #{@life_points} life points."
      if @life_points > 100 then @life_points = 100
      end
    end
  end
end