class Prescription < ApplicationRecord
    belongs_to :user
    belongs_to :brand_name
end
