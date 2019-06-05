class User < ApplicationRecord
  #encrypt password
  has_secure_password

  #model association
  has_many :questions, foreign_key: :created_by

  #Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: {message: "already registered"},
            format: { with: URI::MailTo::EMAIL_REGEXP, message: 'is invalid' }
end
