class BrandName < ApplicationRecord
    has_many :generics
    has_many :alternatives
    has_many :prescriptions
    has_many :users, through: :prescriptions
end
