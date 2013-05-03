require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    
    describe "Top Nav Bar" do
      before { visit root_path }
      
      it "should have the branding title 'Quote of the Day'" do
        page.should have_css('div.brand', text: 'Quote of the Day')
      end
      
      it "should have the form fields necessary to sign in" do
        find('#signin').visible?
      end
      
      it "should have the standard navigation links" do
        page.should have_link("Home",         href: root_path)
        page.should have_link("About",        href: about_path)
        page.should have_link("Help",         href: help_path)
        page.should have_link("Contact",      href: contact_path)
        page.should have_link("Sign In",      href: signin_path)
        page.should have_link("Sign Up",      href: signup_path)
      end
    end
    
    describe "Main content" do
      before { visit root_path }
      
      it "Should have the quote of the day on display" do
        find('#qotd').visible?
        page.should have_css('p.quote')
        page.should have_css('p.author')
      end
    end
    
    describe "Footer" do
      pending
    end
  end
  
  describe "About page" do
    pending
  end
  
  describe "Help page" do
    pending
  end
  
  describe "Contact page" do
    pending
  end
  
  describe "Sign In page" do
    pending
  end
  
  describe "Sign Up page" do
    pending
  end
end
