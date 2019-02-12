class Scraping
   def self.scraping_image
     links = []
     agent = Mechanize.new
     page = agent.get("https://www.pakutaso.com/20160622154post-8028.html")
     elements = page.search('.photoEntry__thumb img')
      elements.each do |ele|
       links << ele.get_attribute('src') 
      end
   end 
    
   
   def self.scraping_save(links)
       agent = Mechanize.new
       page = agent.get(links)
       image = page.at('.photoEntry__thumb img')[:src] if page.at('photoEntry__thumb img')
       
       column = Column.new(image:image)
       column.save
   end
end
