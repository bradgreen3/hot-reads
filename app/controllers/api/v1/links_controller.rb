class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @hot_links = Link.hot
    render :json => @hot_links.to_json, status => 200
  end

  def create
    @link = Link.create(url: params["url"])
    render :json => @link.to_json, :status => 200
  end

end
