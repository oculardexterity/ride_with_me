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
      user = User.create!(name: "#{name}_#{n}",
                   email: email,
                   password: password,
                   password_confirmation: password)
      
      first_name = Faker::Name.first_name
      sex = %w[Male Female].sample
      looking_for_sex = %w[Male Female].sample
      user.profile.update_attributes(
                      date_of_birth: randomDate(:year_range => 60, :year_latest => 22), 
                      sex: sex,
                      looking_for_sex: looking_for_sex, 
                      statement: statement(first_name, sex, looking_for_sex))

    end
  end


  private

    def statement(first_name, sex, looking_for_sex)
      "Hi, my name is #{first_name}, quite a #{appearance} #{sex}. I am looking for a #{looking_for_sex} who is totally #{appearance}."
    end

    def appearance
      %w[adorable
          beautiful
          clean
          drab
          elegant
          fancy
          glamorous
          handsome
          long
          magnificent
          old-fashioned
          plain
          quaint
          sparkling
          ugly
          unsightly
          wide-eyed].sample
    end

    def randomDate(params={})
      years_back = params[:year_range] || 5
      latest_year  = params [:year_latest] || 0
      year = (rand * (years_back)).ceil + (Time.now.year - latest_year - years_back)
      month = (rand * 12).ceil
      day = (rand * 31).ceil
      series = [date = Time.local(year, month, day)]
      if params[:series]
        params[:series].each do |some_time_after|
          series << series.last + (rand * some_time_after).ceil
        end
        return series
      end
      date
    end

end