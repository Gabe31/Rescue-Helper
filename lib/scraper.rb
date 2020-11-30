class Rescue 

    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
    end 

    @@all = []

    def scraper

        all = []

        url = "http://woodstocksanctuary.org/meet-the-animals/"
        #raw_html = HTTParty.get(url)
        
        parsed_page = Nokogiri::HTML(open(url))
        rescue_list = parsed_page.css ('div.title')
        binding.pry
        rescue_list.each do |animals|
        rescues = { name: animals.css('div.title').text.strip }

        @@all << rescues 
    
        end 
    end 
end 