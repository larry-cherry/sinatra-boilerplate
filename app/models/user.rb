class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  def self.authenticate(email, password)
    user = find_by(:email => email)
    if user && user.password == password
      user
    end
  end

  def password
    return if hashed_password.nil?
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    return if new_password.empty?
    @password = Password.create(new_password)
    self.hashed_password = @password
  end
end
