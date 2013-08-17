require 'spec_helper'

describe Profile do
  let(:profile) { FactoryGirl.create(:profile) }

  subject { profile }

  it { should respond_to(:date_of_birth) }
  it { should respond_to(:sex) }
  it { should respond_to(:looking_for_sex) }
  it { should respond_to(:statement) }

  its(:sex) { should eq "Male" }
  its(:age) { should eq 23 }
  its(:statement) { should eq "Some text here" * 50}
end