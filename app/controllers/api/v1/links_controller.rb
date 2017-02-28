class Api::V1::LinksController < ApplicationController

  def create
    @link = Link.create(url: params["link"]["url"])
    render :json => @link.to_json, :status => 200
  end
  
end
