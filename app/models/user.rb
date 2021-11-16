class User < ActiveRecord::Base

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    User.update_all('email = LOWER(email)')
    if (email)
      user = User.find_by_email(email.strip.downcase)
      if user && user.authenticate(password)
        return user
      else
        return nil
      end
    end
  end

  validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
