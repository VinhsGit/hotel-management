class Room < ApplicationRecord
    has_many :booking_histories
    has_many :users, through: :booking_histories
end
