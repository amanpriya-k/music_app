# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#

class User < ApplicationRecord
  after_initialize :ensure_session_token
  validates :email, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  has_many :notes

  def self.generate_session_token
    SecureRandom.urlsafe_base64
  end

  def self.find_by_credentials(em, pw)
    user = User.find_by(email: em)
    return user if user && user.is_password?(pw)
    nil
  end

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(pw)
  end

  def is_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

end
