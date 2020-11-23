class Rescue 

    @@all = []

    def scraper

        all = []

        url = "http://woodstocksanctuary.org/meet-the-animals/"
        raw_html = HTTParty.get(url)
        parsed_page = Nokogiri::Html(raw_html)
        rescue_list = parsed_page.css ('div.title')

        rescue_list.each do |animals|
        rescues = { name: rescue_list.css('div.title').text.strip }

        @@all << rescues 
    
        end 
    end 
end 