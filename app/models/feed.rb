class Feed
  include Mongoid::Document
  def self.update_from_feed(feed_url)
     Feedzirra::Feed.fetch_and_parse(feed_url)
  end
end
