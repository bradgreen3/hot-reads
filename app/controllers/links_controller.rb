class LinksController < ApplicationController

  def index
    @links = Link.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).group(:url).order('count_id DESC').count(:id)
  end
  
end
