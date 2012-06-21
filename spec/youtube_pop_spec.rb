require 'youtube_pop'

describe YoutubePop::StandardApi do
  before do
    @youtube_pop = YoutubePop::StandardApi.new
  end
  
  describe "error handling" do
    it "raises gem specific errors" do
      @error_pop = YoutubePop::StandardApi.new
      @error_pop.instance_variable_set(:@conn, nil)
      expect { 
              @error_pop.top_rated
      }.to raise_exception(YoutubePop::Error)
    end
  end

  describe '#top_rated' do
    before do
      @entries = @youtube_pop.top_rated
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#top_favorites' do
    before do
      @entries = @youtube_pop.top_favorites
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_viewed' do
    before do
      @entries = @youtube_pop.most_viewed
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_shared' do
    before do
      @entries = @youtube_pop.most_shared
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_popular' do
    before do
      @entries = @youtube_pop.most_popular
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_recent' do
    before do
      @entries = @youtube_pop.most_recent
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_discussed' do
    before do
      @entries = @youtube_pop.most_discussed
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#most_responded' do
    before do
      @entries = @youtube_pop.most_responded
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#recently_featured' do
    before do
      @entries = @youtube_pop.recently_featured
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end

  describe '#trending_videos' do
    before do
      @entries = @youtube_pop.trending_videos
    end

    it "should get data" do
      @entries.size.should > 0
    end

    it "should contain valid data" do
      @entries.each do |entry|
        entry.should be_a_kind_of(YoutubePop::Entry)
        entry.published.should  =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.updated.should    =~ /^[\d]{4}\-[\d]{2}\-[\w]{5}:[\d]{2}:[\d]{2}\.[\w]{4}/
        entry.link.should start_with 'https://'
        entry.author_name.should_not be_empty
      end
    end
  end
end
