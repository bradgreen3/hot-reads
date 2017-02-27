require 'rails_helper'

describe "new link endpoint" do
  context "POST /links" do
    it "creates new link" do
      
      headers = {"CONTENT-TYPE" => "application/json"}
      params = {link: {title: "Google", url: "http://www.google.com"} }.to_json

      post "/api/v1/links", params: params, headers: headers

      link = JSON.parse(response.body)

      expect(response).to have_http_status(200)

    end
  end
