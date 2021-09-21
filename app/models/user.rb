class User < ActiveRecord::Base

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    user = User.find_by_email(email)

    if user && user.authenticate(password)

      return user.id
    else 
      return false
    end
  end

  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  
end
