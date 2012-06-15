require 'youtube_pop/version'
require 'faraday'
require 'nokogiri'

module YoutubePop
  # Base error class for the extension. Credit to gem youtube_it
  class Error < RuntimeError
    attr_reader :code
    def initialize(msg, code = 0)
      super(msg)
      @code = code
    end
  end

  class Entry
    attr_accessor :published, :updated, :content, :link, :author_name
  end

  class StandardApi
    def initialize
      @entries = []

      options = {
        :timeout      => 2,
        :open_timeout => 2
      }
      @conn = Faraday.new(:url => 'https://gdata.youtube.com', :options => options) do |builder|
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
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def top_favorites
      response = @conn.get '/feeds/api/standardfeeds/top_favorites'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_shared
      response = @conn.get '/feeds/api/standardfeeds/most_shared'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_viewed
      response = @conn.get '/feeds/api/standardfeeds/most_viewed'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_popular
      response = @conn.get '/feeds/api/standardfeeds/most_popular'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_recent
      response = @conn.get '/feeds/api/standardfeeds/most_recent'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_discussed
      response = @conn.get '/feeds/api/standardfeeds/most_discussed'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def most_responded
      response = @conn.get '/feeds/api/standardfeeds/most_responded'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def recently_featured
      response = @conn.get '/feeds/api/standardfeeds/recently_featured'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end

    def trending_videos
      response = @conn.get '/feeds/api/standardfeeds/on_the_web'
      doc = Nokogiri::XML(response.body)
      doc.css('entry').map do |entry|
        published   = entry.css('published').text
        updated     = entry.css('updated').text
        content     = entry.css('content').text
        link        = entry.at_css("link")['href']
        author_name = entry.at_css("author uri").text

        entry = Entry.new
        entry.published = published
        entry.updated   = updated
        entry.content   = content
        entry.link      = link
        entry.author_name = author_name
        @entries << entry
      end
      @entries
    end
  end
end
