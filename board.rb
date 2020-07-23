
require 'pry'

require_relative 'boardcase'
require_relative 'player'

class Board
  attr_accessor :boardcase_array, :count_turn

  def initialize
    a1 = BoardCase.new("a1", " ")
    a2 = BoardCase.new("a2", " ")
    a3 = BoardCase.new("a3", " ")
    b4 = BoardCase.new("b4", " ")
    b5 = BoardCase.new("b5", " ")
    b6 = BoardCase.new("b6", " ")
    c7 = BoardCase.new("c7", " ")
    c8 = BoardCase.new("c8", " ")
    c9 = BoardCase.new("c9", " ")

    @boardcase_array = []
    @count_turn = 0

     @boardcase_array[0] = a1
     @boardcase_array[1] = a2
     @boardcase_array[2] = a3
     @boardcase_array[3] = b4
     @boardcase_array[4] = b5
     @boardcase_array[5] = b6
     @boardcase_array[6] = c7
     @boardcase_array[7] = c8
     @boardcase_array[8] = c9
    
  end

  def play_turn  #Faire un compteur pour savoir si on est arrivé au bout du jeu
    puts "#{current_player}, Sur quelle case voulez-vous jouer"
    puts ">"
    input = gets.chomp
    @boardcase_array.each do |boardcase|
      if boardcase.position == input 
        boardcase.type = current_player.pawn_type
      end
    end
    @count_turn = @count_turn + 1
  end



    

  end

  def victory #On teste toutes les combinaisons pour savoir si un jouer a gagné
      if @boardcase_array[0].type == "X"  && @boardcase_array[1].type == "X" && @boardcase_array[2].type == "X"
        return "X"
      elsif @boardcase_array[3].type == "X"  && @boardcase_array[4].type == "X" && @boardcase_array[5].type == "X"
        return "X"
      elsif @boardcase_array[6].type == "X"  && @boardcase_array[7].type == "X" && @boardcase_array[8].type == "X"
        return "X"  
      elsif @boardcase_array[0].type == "X"  && @boardcase_array[3].type == "X" && @boardcase_array[6].type == "X"
        return "X"
      elsif @boardcase_array[1].type == "X"  && @boardcase_array[4].type == "X" && @boardcase_array[7].type == "X"
        return "X"
      elsif @boardcase_array[2].type == "X"  && @boardcase_array[5].type == "X" && @boardcase_array[8].type == "X"
        return "X"
      elsif @boardcase_array[0].type == "X"  && @boardcase_array[4].type == "X" && @boardcase_array[8].type == "X"
        return "X"
      elsif @boardcase_array[2].type == "X"  && @boardcase_array[4].type == "X" && @boardcase_array[6].type == "X"
        return "X"


      elsif @boardcase_array[0].type == "Y"  && @boardcase_array[1].type == "Y" && @boardcase_array[2].type == "Y"
          return "X"
      elsif @boardcase_array[3].type == "Y"  && @boardcase_array[4].type == "Y" && @boardcase_array[5].type == "Y"
        return "Y"
      elsif @boardcase_array[6].type == "Y"  && @boardcase_array[7].type == "Y" && @boardcase_array[8].type == "Y"
        return "Y"
      elsif @boardcase_array[0].type == "Y"  && @boardcase_array[3].type == "Y" && @boardcase_array[6].type == "Y"
        return "Y"
      elsif @boardcase_array[1].type == "Y"  && @boardcase_array[4].type == "Y" && @boardcase_array[7].type == "Y"
        return "Y"
      elsif @boardcase_array[2].type == "Y"  && @boardcase_array[5].type == "Y" && @boardcase_array[8].type == "Y"
        return "Y"
      elsif @boardcase_array[0].type == "Y"  && @boardcase_array[4].type == "Y" && @boardcase_array[8].type == "Y"
        return "Y"
      elsif @boardcase_array[2].type == "Y"  && @boardcase_array[4].type == "Y" && @boardcase_array[6].type == "Y"
        return "Y"
      elsif @count_turn == 9
        return "Match nul"  
      elsif 
        return "En cours"  
      end
    end
      
    


  
   
        
  

  

  



  binding.pry




end

puts "End of file"