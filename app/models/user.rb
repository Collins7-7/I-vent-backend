class User < ApplicationRecord
    has_secure_password

    has_many :bookings
    has_many :events, through: :bookings

    validates :full_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, length: { minimum: 8 }
end
