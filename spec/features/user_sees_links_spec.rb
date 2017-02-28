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
    it "sees only the top 10 most-read urls" do
      Link.create(url: "www.one.com")
      Link.create(url: "www.one.com")
      Link.create(url: "www.two.com")
      Link.create(url: "www.two.com")
      Link.create(url: "www.three.com")
      Link.create(url: "www.three.com")
      Link.create(url: "www.four.com")
      Link.create(url: "www.four.com")
      Link.create(url: "www.five.com")
      Link.create(url: "www.five.com")
      Link.create(url: "www.six.com")
      Link.create(url: "www.six.com")
      Link.create(url: "www.seven.com")
      Link.create(url: "www.seven.com")
      Link.create(url: "www.eight.com")
      Link.create(url: "www.eight.com")
      Link.create(url: "www.nine.com")
      Link.create(url: "www.nine.com")
      Link.create(url: "www.ten.com")
      Link.create(url: "www.ten.com")
      Link.create(url: "www.eleven.com")

      visit root_path
      expect(page).to have_content("www.ten.com")
      expect(page).to_not have_content("www.eleven.com")
    end
  end
end
