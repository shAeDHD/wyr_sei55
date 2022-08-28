class User < ApplicationRecord

    validates :name, length: { minimum: 2 }

    # Don't allow a User.create to proceed when the email field is left blank
    validates :email, presence: true, uniqueness: true

    validates :dob, presence: true 
  
    has_secure_password
  
    has_many :questions


end
