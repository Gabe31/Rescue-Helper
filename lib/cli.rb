class Cli

    def run 
        puts design 
        puts "Welcome to Rescue Helper!"
        puts "Find an animal to donate to!"

        Rescue.new.scraper

        rescue_list 

    end 

    def design 
        puts "======================="
        puts     "RESCUE HELPER"
        puts "======================="
    end 


    def rescue_list
        user_input = nil 
            puts "Would you like to see our list of rescues?"
            puts "Y/N"

        user_input = gets.strip.downcase

        if user_input == "y" || "yes" 
            Rescue.list
        elsif user_input == "n" || "no"
            puts exit 
        else 
            puts "Please enter a valid response"
        end 
    end 



    def exit
        puts "Goodbye! Visit again soon!"
    end 

end 
