namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "oculardexterity",
                         email: "oculardexterity@gmail.com",
                         password: "whatever",
                         password_confirmation: "whatever",
                         admin: true)

    99.times do |n|
      name  = Faker::Internet.user_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: "#{name}_#{n}",
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end