class Scraping
   def self.scraping_image
     agent = Mechanize.new
     page = agent.get("https://www.pakutaso.com/20160622154post-8028.html")
     elements = page.search('.photoEntry__thumb img')
       elements.each do |ele|
         puts ele.get_attribute('src')
       end
   end
    
   
   def self.scraping_save
       agent = Mechanize.new
       page = agent.get(link)
       image = page.at('.photoEntry__thumb img')[:src] 
       
       column = Column.new(image:image)
       column.save
   end
end
