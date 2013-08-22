require 'spec_helper'

describe "ProfilePages" do
	# Trash all users from test to stop 'same name' on subsequent tests.	
	after(:all)  { User.delete_all }



	# Build a user
	let(:user) { FactoryGirl.create(:user) }

	# Build a user profile
	before do 
		user.profile = FactoryGirl.create(:profile)
		user.profile.save
  end
  
	
	subject { page }


	describe "user profile page" do
		before { visit user_profile_path(user) }

		it { should have_selector('h1', text: user.name) }
		it { should have_content("Age: 23") }
		it { should have_content("Male") }
		it { should have_content("Looking for: Female") }
		it { should have_selector('#statement', text: "Some text here" * 50) }
		it { should have_selector('#looking_for_text', text: "Looking for something" * 20)}

		it { should have_link("See user overview page", href: user_path(user)) }

		describe "when visiting incomplete profile" do
			let(:incomplete_user) { FactoryGirl.create(:user) }

			before { visit user_profile_path(incomplete_user) }

			# Also tests visiting non-current user has no edit button
			it { should_not have_link('Edit') }

			it { should_not have_content("Age:") }
			it { should_not have_selector("#sex") }
			it { should_not have_selector("#looking_for_sex") }
			it { should have_selector('#statement', text: "This person hasn't") }
			it { should have_selector('#looking_for_text', text: "This person hasn't") }
		end
  end


end