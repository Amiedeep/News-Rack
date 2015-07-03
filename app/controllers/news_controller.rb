class NewsController < ApplicationController

  def index

    # require'pry';binding.pry
    NewsSource.all.each do |news_paper|

    end
  end

end
