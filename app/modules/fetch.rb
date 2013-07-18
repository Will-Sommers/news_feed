require 'open-uri'
require 'nokogiri'


module Fetch
  class ArticleClient

    attr_reader :url

    def initialize(uri)
      @url = uri
    end

    def fetch_and_parse
      html = get(@url)
      doc = Nokogiri::HTML(html)
      output_text = ''
      doc.css("p").each do |text|
        output_text << text.content
      end
      return output_text.squish
    end 

    private 

    #Todo: attach user agent

    def get(url)
      open(url)
    end

    def parse(html)

    end
  end
end