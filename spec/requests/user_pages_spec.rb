require 'spec_helper'

describe "UserPages" do

  describe "When a site visitor navigates to 'About'" do
    before { visit root_path }
    before { click_link('About') }
    
    it "should see an h1 heading explaining a bit about quote of the day" do
      page.should have_selector('h1',     text: "A bit about Quote of the Day")
    end
    
    it "should see a navigation menu" do
      page.should have_link("Home",         href: root_path)
      page.should have_link("About",        href: about_path)
      page.should have_link("Help",         href: help_path)
      page.should have_link("Contact",      href: contact_path)
      page.should have_link("Sign In",      href: signin_path)
      page.should have_link("Sign Up",      href: signup_path)
    end
  end
  
  describe "When a site visitor navigates to 'Help'" do
    before { visit root_path }
    before { click_link('Help') }
    
    it "should see an h1 heading with the text 'Need some help?'" do
      page.should have_selector('h1',       text: "Need some help?")
    end
  end
  
  describe "When a site visitor navigates to 'Contact'" do
    before { visit root_path }
    before { click_link('Contact') }
    
    it "should see an h1 heading with the text 'Contact Us'" do
      page.should have_selector('h1',       text: "Contact Us")
    end
  end
  
  describe "When a site visitor navigates to 'Sign In'" do
    before { visit root_path }
    before { click_link('Sign In') }
    
    it "should see an h1 heading with the text 'Sign In'" do
      page.should have_selector('h1',       text: "Sign In")
    end
  end
  
  describe "When a site visitor navigates to 'Sign Up'" do
    before { visit root_path }
    before { click_link('Sign Up') }
    
    it "should see an h1 heading with the text 'Sign Up Now!'" do
      page.should have_selector('h1',       text: "Sign Up Now!")
    end
  end
end
