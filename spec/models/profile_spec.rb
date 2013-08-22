require 'spec_helper'

describe Profile do
  let(:profile) { FactoryGirl.create(:profile) }

  subject { profile }

  it { should be_valid }

  it { should respond_to(:date_of_birth) }
  it { should respond_to(:sex) }
  it { should respond_to(:looking_for_sex) }
  it { should respond_to(:statement) }

  # Checks against factory variables for my own sanity
  its(:sex) { should eq "Male" }
  its(:looking_for_sex) { should eq "Female" }
  its(:age) { should eq 23 }
  its(:statement) { should eq "Some text here" * 50 }
  its(:looking_for_text) { should eq "Looking for something" * 20 }
  its(:food_likes) { should include('Cabbage', 'Sprouts') }

  # when user is destroyed it should destroy profile
    #Can I just trash a profile without going to the page?
end
