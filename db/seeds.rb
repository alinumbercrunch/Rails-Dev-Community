require 'faker'

PROFILE_TITLE = [
  "Senior Ruby on Rails Developer",
  "Full Stack Ruby on Rails Developer",
  "Senior Java Developer",
  "Senior JavaScript Developer",
  "Senior Back End Developer"
].freeze

ActiveRecord::Base.transaction do
  begin
    10.times do |i|
      user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: "#{Faker::Name.first_name.downcase}_#{i+10}",
        email: Faker::Internet.email,
        contact_number: Faker::PhoneNumber.phone_number_with_country_code,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country: Faker::Address.country,
        pincode: Faker::Address.zip_code,
        date_of_birth: (Date.today - rand(18..65).years),
        profile_title: PROFILE_TITLE.sample,
        password: "123456",
        about: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia."
      )
      puts "User #{i+1} created successfully"
    end
  rescue ActiveRecord::RecordInvalid => e
    puts "Transaction failed: #{e.message}"
    raise ActiveRecord::Rollback
  end
end
