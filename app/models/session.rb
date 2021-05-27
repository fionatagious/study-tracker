class Session < ApplicationRecord
    has_many :buds, dependent: :destroy
    has_one :minutes
end
