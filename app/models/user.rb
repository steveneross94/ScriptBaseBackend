class User < ApplicationRecord
    has_many :prescriptions
    has_many :brand_names, through: :prescriptions

    validates :username, uniqueness: true

    has_secure_password
end
