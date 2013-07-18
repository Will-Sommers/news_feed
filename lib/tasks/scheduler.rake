require 'open-uri'
require 'nokogiri'

desc "Rake tasks"


  task :fetch_story do
    url = "http://www.nytimes.com/2013/07/16/us/politics/democrats-seeing-precedent-press-on-to-curb-filibuster.html?hp&_r=0&pagewanted=print"
    html = open(url)
    doc = Nokogiri::HTML(html)
    doc.css("p").each do |text|
      puts text.content
    end
  end

