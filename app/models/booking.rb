class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :bed_id
end
