require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content and title for home" do
      visit '/static_pages/home'
      page.should have_content('Timeline')
      page.should have_selector('title', text: 'Timeline | Home')
    end
  end
  
  describe "Help Page" do
    it "should have the content and title help " do
      visit '/static_pages/help'
      page.should have_content('Help')
      page.should have_selector('title', text: 'Timeline | Help')
    end
  end
  
  describe "About Page" do
    it "should have the content and title about" do
      visit '/static_pages/about'
      page.should have_content('About')
      page.should have_selector('title', text: 'Timeline | About')
    end
  end
end
