# app/helpers/users_helper.rb
module UsersHelper
  def formatted_full_name(user)
    "#{user.first_name.capitalize} #{user.last_name.capitalize}"
  end
end
