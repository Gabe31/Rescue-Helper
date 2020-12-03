class Rescue 

    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
    end 

    def self.all
        @@all
    end 

    @@all = []

    def scraper

        all = []

        url = "http://woodstocksanctuary.org/meet-the-animals/"
       
        parsed_page = Nokogiri::HTML(open(url))
        rescue_list = parsed_page.css ('div.title')
    
        rescue_list.each do |animals|
        rescues = { name: animals.css('div.title').children.text.strip }

        @@all << rescues 
    
        end 
    end 
end 