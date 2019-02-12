require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.pakutaso.com/20160622154post-8028.html")
elements = page.search('.photoEntry__thumb img')
elements.each do |ele|
  puts ele.get_attribute('src') # get_attributeメソッドで属性srcの値を取得
end