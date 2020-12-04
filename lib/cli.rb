class Cli

    #binding.pry 

    def run 
        puts design 
        puts "Welcome to Rescue Helper!"
        puts "Find an animal to donate to!"
        Scraper.new.scraper
        menu 
    end 

    def design 
        puts "======================="
        puts     "RESCUE HELPER"
        puts "======================="
    end 


    def menu
       
        user_input = nil 
            puts "Would you like to see our list of rescues?"
            puts "Y/N"

        user_input = gets.strip.downcase

        if user_input == "y" || "yes" 
            puts list_animals
            more_info
        elsif user_input == "n" || "no" || "exit"
            menu 
        else 
            puts "Please enter a valid response"
            exit 
        end 
    end 


    def list_animals
        puts "Meet Our Animals"

      
#put method for list
      Rescue.find_all.each.with_index(1) do |ani, idx|
       puts "#{idx}. #{ani}"
    end
        puts ""
    end

    def more_info
        puts "Which animal would you like more information on?"
        u_i = gets.strip
        animal = Rescue.find_rescue(u_i)
        if !animal
            puts "Not a valid response"
            more_info
        end 
        Scraper.scraper_info(animal)
    end 

    def exit
        puts "Goodbye! Visit again soon!"
    end 

end 
