class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true, length: { minimum: 5 }
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password_confirmation, presence: true
 
  has_secure_password

  has_many :reviews

  def self.authenticate_with_credentials email, password
    email = email.strip.downcase
    User.find_by_email(email).try(:authenticate, password) 
  end
  
end
