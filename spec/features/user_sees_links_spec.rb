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

# As an unauthenticated user, I can visit the Hot Reads main index page and see a
# list of the top-10 most-read URLs (not titles or URL/title combos) across all
# users. Only reads from the last 24 hours should count towards the ranking.
