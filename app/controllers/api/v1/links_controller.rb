class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @link = Link.create(url: params["url"])
    render :json => @link.to_json, :status => 200
  end

end
