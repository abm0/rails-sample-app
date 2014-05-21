require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "Should have the title 'Rails Tutorial Sample App | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do

    it "Should have the title 'Rails Tutorial Sample App | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Rails Tutorial Sample App | Help')
    end
  end

  describe "About" do
  	it "Should have title 'Rails Tutorial Sample App | About us'" do
  	  visit "/static_pages/about"
  	  expect(page).to have_title('Rails Tutorial Sample App | About Us')
  	end
  end

  describe "Contacts" do
    it "Should have title 'Rails Tutorial Sample App | Contacts'" do
      visit "/static_pages/contacts"
      expect(page).to have_title('Rails Tutorial Sample App | Contacts')
     end
  end
end