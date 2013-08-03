FactoryGirl.define do
	factory :user do
		name "Firstname Lastname"
		email "firstname@lastname.com"
		password "foobar"
		password_confirmation "foobar"
	end
end