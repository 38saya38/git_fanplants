require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.pakutaso.com/20160622154post-8028.html")
elements = page.search('.photoEntry__image img')
puts elements.get_attribute('src')