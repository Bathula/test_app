class FeedsController < ApplicationController
  def index
    @feeds= Feed.update_from_feed("http://feeds.feedburner.com/railscasts")

  end
  def show
    @feeds= Feed.update_from_feed(["http://feeds.feedburner.com/railscasts", "http://rss.news.yahoo.com/rss/entertainment"])

        #render 'index'
  end
end
