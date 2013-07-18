require 'spec_helper'
require 'fetch'

module Fetch

  describe "#fetch_and_parse" do 

    it 'fetchs html from source' do

      uri = "http://www.nytimes.com/2013/07/16/us/politics/democrats-seeing-precedent-press-on-to-curb-filibuster.html?hp&_r=0&pagewanted=print"

      client = Fetch::ArticleClient.new(uri)

      # VCR.use_cassette('news_feed_source') do 
      document = client.fetch_and_parse
      # end

      document.length.should > 0

    end



  end


end