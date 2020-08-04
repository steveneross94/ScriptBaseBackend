class User < ApplicationRecord
    has_many :prescriptions
    has_many :brand_names, through: :prescriptions
end
