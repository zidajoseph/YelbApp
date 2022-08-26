class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest_admin
    find_or_create_by!(email: 'adminguest@gmail.com') do |admin|
      admin.password = SecureRandom.urlsafe_base64
    end
  end  
end
