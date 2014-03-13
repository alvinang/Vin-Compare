# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)      not null
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  attr_reader :password
  
  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  
  
  def reset_session_token!  
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end
  
  def self.find_by_credentials(params)
    user = User.find_by(email: params[:email])
    return user if user && user.is_password?(params[:password])
    nil
  end
  
  # setter method for password
  def password=(unencrypted_password)
    @password = unencrypted_password
    self.password_digest = BCrypt::Password.create(unencrypted_password)
  end
  
  # is_password? correct
  def is_password?(unencrypted_password)
    BCrypt::Password.new(self.password_digest).is_password?(unencrypted_password)
  end
  
  
  
end
