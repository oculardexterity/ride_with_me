FactoryGirl.define do
  factory :user do
    
    sequence(:name)  { |n| "Person_#{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  	
  	factory :admin do
      admin true
    end
  end

  factory :profile do
    user
    date_of_birth "1 January 1990"
    sex "Male"  
    looking_for_sex "Male"
    statement "Some text here" * 50
  end


end