require 'feedjira'
class NewsController < ApplicationController

  def feed_sources

    # require'pry';binding.pry
    @english_news= NewsSource.where(language: 'English')
    @news_entries=[]
    @english_news.each do |news_rss|
      # feed = Feedjira::Feed.fetch_and_parse('http://www.bhaskar.com/rss-feed/2322/')
      feed = Feedjira::Feed.fetch_and_parse(news_rss.rss_url)
      parse_feed(feed)
    end
  end


  def parse_feed feed
    feed.entries.each do |entry|
      find_keyword_in_feed(entry)
    end
  end

  def find_keyword_in_feed(entry)
    keyword=params[:search_keyword]
    @news_entries << entry unless entry.title.index(keyword).nil?
    require'pry';binding.pry
  end

end
