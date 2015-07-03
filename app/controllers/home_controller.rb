# require 'feedzirra/version'
require 'open-uri'
require 'rss'
require 'rss/parser'
# require 'feedzirra'
require 'feedjira'
class HomeController < ApplicationController

  # feed = Feedzirra::Feed.fetch_and_parse('http://www.bhaskar.com/rss-feed/2322/')

  def start
    # require'pry';binding.pry


    # feed = Feedjira::Feed.fetch_and_parse('http://www.bhaskar.com/rss-feed/2322/')

    # open('http://www.bhaskar.com/rss-feed/2322/') do |rss|
    #   require'pry';binding.pry
    #   feed = RSS::Parser.parse(rss)
    #   puts "Title: #{feed.channel.title}"
    #   feed.items.each do |item|
    #     puts "Item: #{item.title}"
    #   end
    # end
  end
end
