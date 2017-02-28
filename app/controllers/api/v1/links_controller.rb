class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.where(updated_at: (Time.now - 24.hours)..Time.now).limit(10).group(:url).order('count_id DESC').count(:id)
    @hot_links = []
    @links.map do |url, count|
      @hot_links << url
    end
    render :json => @hot_links.to_json, status => 200
  end

  def create
    @link = Link.create(url: params["url"])
    render :json => @link.to_json, :status => 200
  end

end
