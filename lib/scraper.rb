class Scraper

    @@all = []

    def scraper

        all = []

        url = "http://woodstocksanctuary.org/meet-the-animals/"
       
        parsed_page = Nokogiri::HTML(open(url))
        rescue_list = parsed_page.css('div.title')
    
        rescue_list.each do |animals|
            name = animals.children.text
            info = animals.parent.parent.attr('href')
        
        Rescue.new(name, info)
    
        end 
    end 

    def self.scraper_info(info)
       
        doc = Nokogiri::HTML(open(info.url))
        blurb = doc.css("p")[4].text
        puts blurb 
      end 
end 