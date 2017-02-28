require 'rails_helper'

describe "hot links endpoint" do
  context "GET /links" do
    it "returns hot links" do

      Link.create(url: "www.google.com")
      Link.create(url: "www.yahoo.com")

      # headers = {"CONTENT-TYPE" => "application/json"}
      # params = {url: "http://www.google.com"}.to_json

      get "/api/v1/links"

      link = JSON.parse(response.body)

      expect(response).to have_http_status(200)

    end
  end
end
