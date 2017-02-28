require 'rails_helper'

describe "new link endpoint" do
  context "POST /links" do
    it "creates new link" do

      headers = {"CONTENT-TYPE" => "application/json"}
      params = {link: {url: "http://www.google.com"} }.to_json

      post "/api/v1/links", params: params, headers: headers

      link = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(Link.where(url: "http://www.google.com")).to exist

    end
  end
end
