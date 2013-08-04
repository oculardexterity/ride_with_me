require 'spec_helper'

describe "StaticPages" do

	subject { page }

	let(:base_title) { "Ride With Me" }
  
  describe "Home Page" do
  	before { visit root_path }

  	it { should have_content('Ride With Me') }
  	it { should have_title(full_title('')) }
  	it { should_not have_title(full_title('Home')) }

    describe "when user is signed in" do
      let(:user) { FactoryGirl.create(:user) }
      before do 
        sign_in user
        visit root_path
      end

      it { should_not have_link('Sign up now!', href: signup_path) }
    end
  end

  describe "Help Page" do
  	before { visit help_path }

  	it { should have_content('Help') }
  	it { should have_title(full_title('Help')) }
  end

  describe "About Page" do
  	before { visit about_path }

  	it { should have_content("About Ride With Me") }
  	it { should have_title(full_title('About')) }
  end

  describe "Contact Page" do
  	before { visit contact_path }

  	it { should have_content("Contact Us") }
  	it { should have_title(full_title('Contact'))}
  end



end
