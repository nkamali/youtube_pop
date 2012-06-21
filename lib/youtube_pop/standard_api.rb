require 'youtube_pop/version'
require 'ostruct'
require 'faraday'
require 'json'
module YoutubePop

  class Error < RuntimeError
    attr_reader :source_exception
    def initialize(msg, e=$!)
      super(msg)
      @source_exception = e
    end
  end
  
  Entry = Class.new(OpenStruct)

  class StandardApi
    def initialize
      options = {
        :timeout      => 2,
        :open_timeout => 2
      }
      @conn = Faraday.new(:url => 'https://gdata.youtube.com', :options => options) do |builder|
        builder.request  :url_encoded
        builder.adapter  :net_http
      end
    end

    def top_rated
      response = response_from url_for("top_rated")
      get_entries(response)
    end

    def top_favorites
      response = response_from url_for("top_favorites")
      get_entries(response)
    end

    def most_shared
      response = response_from url_for("most_shared")
      get_entries(response)
    end

    def most_viewed
      response = response_from url_for("most_viewed")
      get_entries(response)
    end

    def most_popular
      response = response_from url_for("most_popular")
      get_entries(response)
    end

    def most_recent
      response = response_from url_for("most_recent")
      get_entries(response)
    end

    def most_discussed
      response = response_from url_for("most_discussed")
      get_entries(response)
    end

    def most_responded
      response = response_from url_for("most_responded")
      get_entries(response)
    end

    def recently_featured
      response = response_from url_for("recently_featured")
      get_entries(response)
    end

    def trending_videos
      response = response_from url_for("on_the_web")
      get_entries(response)
    end

    private

    def response_from(url)
      @conn.get url      
    rescue Exception => e
      raise Error, "Problem retrieving data from #{url}"
    end

    def url_for(path)
      "/feeds/api/standardfeeds/#{path}?alt=json"
    end

    def get_entries(response)
      doc = JSON.parse(response.body)       
      doc['feed']['entry'].map do |entry|
        Entry.new(
          published:    entry['published']['$t'],
          updated:      entry['updated']['$t'],
          content:      entry['content'],
          link:         entry['link'][0]['href'],
          author_name:  entry['author']
        )
      end
    end
  end
end
