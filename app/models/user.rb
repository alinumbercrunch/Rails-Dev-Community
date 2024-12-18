class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  PROFILE_TITLE = ["senior Ruby on Rails Developer", "Full Stack Ruby on Rails Developer", "Senior Java Developer, Senior JavaScript Developer, Senior Back End Developer"].freeze
end
