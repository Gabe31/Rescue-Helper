class Cli

    #binding.pry 

    def run 
        puts design 
        puts "Welcome to Rescue Helper!"
        puts "Find an animal to donate to!"
        Scraper.new.scraper
        intro
    end 

    def design 
        puts "======================="
        puts     "RESCUE HELPER"
        puts "======================="
    end 


    def intro

        puts "Ready to meet our rescues? Press y or yes!"

        #user_input = nil 
        user_input = gets.strip.downcase

        if user_input == "y" || "yes"
            list_animals
            more_info
            re_list 
        else 
            return nil
        end 
    end 


    def list_animals
        puts "Meet Our Animals"

      
      Rescue.find_all.each.with_index(1) do |ani, idx|
       puts "#{idx}. #{ani}"
    end
        puts ""
    end

    def more_info
        puts "Which animal would you like more information on? Type their name!"
        u_i = gets.strip
        animal = Rescue.find_rescue(u_i)
        if !animal
            puts "Not a valid response"
            more_info
        end 
        Scraper.scraper_info(animal)
    end 

    def re_list
        puts "Would you like to make another selection?"
        if "y" || "yes"
            Rescue.find_all.each.with_index(1) do |ani, idx|
                puts "#{idx}. #{ani}"
            more_info
        else 
            return nil
        end 
    end 

end 

#create a method/flow that allowss a user to look at anothere pet after initial selection

#if yes, print list if no exit 