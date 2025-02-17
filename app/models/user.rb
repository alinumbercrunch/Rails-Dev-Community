class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  def name
    "#{first_name} #{last_name}".strip
  end
   def self.ransackable_attributes(auth_object = nil)
    ["country"]
  end
end
