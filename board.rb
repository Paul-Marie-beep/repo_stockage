
require 'pry'

require_relative 'boardcase'
require_relative 'player'

class Board
  attr_accessor :boardcase_array, :count_turn

  def initialize
    a1 = BoardCase.new("a1", " ")
    a2 = BoardCase.new("a2", " ")
    a3 = BoardCase.new("a3", " ")
    b1 = BoardCase.new("b1", " ")
    b2 = BoardCase.new("b2", " ")
    b3 = BoardCase.new("b3", " ")
    c1 = BoardCase.new("c1", " ")
    c2 = BoardCase.new("c2", " ")
    c3 = BoardCase.new("c3", " ")

    @boardcase_array = []
    @count_turn = 0

     @boardcase_array[0] = a1
     @boardcase_array[1] = a2
     @boardcase_array[2] = a3
     @boardcase_array[3] = b1
     @boardcase_array[4] = b2
     @boardcase_array[5] = b3
     @boardcase_array[6] = c1
     @boardcase_array[7] = c2
     @boardcase_array[8] = c3
    
  end

  def play_turn  #Faire un compteur pour savoir si on est arrivé au bout du jeu
    puts "#{current_player}, sur quelle case voulez-vous jouer"
    puts ">"
    input = gets.chomp
    @boardcase_array.each do |boardcase|
      if boardcase.position == input 
        boardcase.type = current_player.pawn_type
      end
    end
    @count_turn = @count_turn + 1
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
      else
        return "ongoing"
      end
    end
      
    


  
   
        
  

  

  



  #binding.pry




end

puts "End of file"