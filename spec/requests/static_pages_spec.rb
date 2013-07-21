require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ride With Me" }
  
  describe "Home Page" do
  	it "should have the content 'Ride With Me'" do
  		visit root_path
  		expect(page).to have_content('Ride With Me')
  	end

  	it "should have a title containing Home" do
  		visit root_path
  		expect(page).to have_title("#{base_title}")
  	end

  	it "should not have a custom page title" do
  		visit root_path
  		expect(page).not_to have_title("#{base_title} | Home")
  	end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		expect(page).to have_content("Help")
  	end

  	it "should have a title containing Help" do
  		visit help_path
  		expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About Page" do
  	it "should have the content 'About Ride With Me'" do
  		visit about_path
  		expect(page).to have_content("About Ride With Me")
  	end

  	it "should have a title containing About" do
  		visit about_path
  		expect(page).to have_title("#{base_title} | About")
  	end
  end

  describe "Contact Page" do
  	it "should have the content 'Contact Us'" do
  		visit contact_path
  		expect(page).to have_content('Contact Us')
  	end

  	it "should have a title containing 'Contact'" do
  		visit contact_path
  		expect(page).to have_title("#{base_title} | Contact")
  	end
  end

end
