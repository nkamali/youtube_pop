require 'youtube_pop/version'
require 'faraday'
require 'hpricot'

module YoutubePop
  class StandardApi
    def initialize
      @conn = Faraday.new(:url => 'https://gdata.youtube.com') do |builder|
        builder.request  :url_encoded
        builder.response :logger
        builder.adapter  :net_http
      end
    end

    #feed/entry/published
    #feed/entry/updated
    #feed/entry/content
    #feed/entry/link rel="alternate" href=
    #
    #feed/entry/author/name
    #feed/entry/author/uri
    def top_rated
      response = @conn.get '/feeds/api/standardfeeds/top_rated/'
      doc = Hpricot(response.body)
      #doc.search("//feed//entry").each do |entry|
      #  puts "PUBLISHED: #{(entry/'published')}"
      #end
    end
  end
end
