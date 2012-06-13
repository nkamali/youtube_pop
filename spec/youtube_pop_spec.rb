require 'youtube_pop'

describe YoutubePop::StandardApi do
  before do
    @youtube_pop = YoutubePop::StandardApi.new
  end

  it "should get top rated data" do
    #@youtube_pop.top_rated.should == ""
    puts "RESULTS: #{@youtube_pop.inspect}"
    puts "RESULTS: #{@youtube_pop.top_rated}"
  end
end