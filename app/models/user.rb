class User < ApplicationRecord
  validates :name,
    presence: true,
    length: {maximum: 15}
    
  validates :email,
    presence: true,
    format: {with: /\A[\S]+@\S+\.[a-z]+\z/}
  
  has_secure_password
  
  validates :password,
    format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
end
