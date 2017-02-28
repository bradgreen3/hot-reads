class Link < ApplicationRecord
  def self.hot
    @links = Link.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).group(:url).order('count_id DESC').count(:id)
    @hot_links = []
    @links.map do |url, count|
      @hot_links << url
    end
    @hot_links
  end
end
