require 'rails_helper'

describe "a user visits the root page" do
  context "and links have been sent from urlockbox" do
    it "sees links" do

      Link.create(url: "www.google.com")
      Link.create(url: "www.yahoo.com")

      visit root_path

      expect(page).to have_content("www.google.com")
      expect(page).to have_content("www.yahoo.com")

    end
  end
end
