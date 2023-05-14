class User < ApplicationRecord
    has_many :booking_histories
    has_many :rooms, through: :booking_histories
end
