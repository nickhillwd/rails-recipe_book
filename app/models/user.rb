class User < ActiveRecord::Base

  before_save {self.user_email = user_email.downcase}

  validates(:user_name, presence: true, length: {maximum: 50})
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates(:user_email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false})

  has_secure_password
  
  has_many :recipes
end
