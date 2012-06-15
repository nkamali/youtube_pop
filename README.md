# YoutubePop

A simple YouTube wrapper around Standard Video Feeds. Gets Top rated, Most viewed, Most shared, Most popular, Most recent, Most discussed, Most
## Installation

Add this line to your application's Gemfile:

    gem 'youtube_pop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youtube_pop

## Usage

require 'youtube_pop'

youtube_pop = YoutubePop::StandardApi.new

top_results = youtube_pop.top_rated         # OR
top_results = youtube_pop.top_favorites     # OR
top_results = youtube_pop.most_viewed       # OR
top_results = youtube_pop.most_shared       # OR
top_results = youtube_pop.most_popular      # OR
top_results = youtube_pop.most_recent       # OR
top_results = youtube_pop.most_discussed    # OR
top_results = youtube_pop.most_responded    # OR
top_results = youtube_pop.recently_featured # OR
top_results = youtube_pop.trending_videos

top_results.each do |result|
  puts result.published   # published date/time
  puts result.updated     # last updated date/time
  puts result.content     # content describing video
  puts result.link        # link to the video
  puts result.author_name # link to the video
end

top_results.size # will tell you how many results come back. No paging yet. Just up to 25 results will be returned

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
