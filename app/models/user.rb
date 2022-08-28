class User < ApplicationRecord

    validates :name, length: {minimum: 2}

    validates :email, prescence: true, uniqueness: true

    has_secure_password

    has_many :questions

end
