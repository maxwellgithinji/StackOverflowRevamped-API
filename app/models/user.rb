class User < ApplicationRecord
  #encrypt password
  has_secure_password

  #model association

  #Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: {message: "already registered"},
            format: { with: URI::MailTo::EMAIL_REGEXP, message: 'is invalid' }
end
