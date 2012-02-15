require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', test: 'Sample App')
    end
    
    it "should have the title 'Home'" do
         visit root_path
         page.should have_selector('title',
                           :text => "Ruby on Rails Tutorial Sample App | Home")
       end
    
  end
  
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the title 'Help'" do
         visit help_path
         page.should have_selector('title',
                           :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About page" do
    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About')
    end
  end
  
  it "should have the title 'About'" do
       visit about_path
       page.should have_selector('title',
                         :text => "Ruby on Rails Tutorial Sample App | About Us")
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'contact')
    end
  end
  
  it "should have the title 'About'" do
       visit contact_path
       page.should have_selector('title',
                         :text => "Ruby on Rails Tutorial Sample App | Contact")
  end
  
  
  
end