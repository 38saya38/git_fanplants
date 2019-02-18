class Scraping
   def self.scraping_image
     agent = Mechanize.new
     page = agent.get("https://www.pakutaso.com/20160622154post-8028.html")
     elements = page.search('.photoEntry__thumb img')
       elements.each do |ele|
         column = Column.new(image: ele.get_attribute("src"),
                             title: ele.get_attribute("alt"))
         column.save
         p column
         puts ele.get_attribute('src')
       end
   end
    
   
   def self.scraping_save
    #   link = "https://www.pakutaso.com/20160622154post-8028.html"
       agent = Mechanize.new
       page = agent.get(link)
       image = page.at('.photoEntry__thumb img')[:src] 
       
       column = Column.new(image:image)
       column.save
   end
end
