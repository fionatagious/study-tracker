class Session < ApplicationRecord
    has_many :buds, dependent: :destroy
end
