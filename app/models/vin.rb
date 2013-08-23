class Vin < ActiveRecord::Base
  validates :vin_number, uniqueness: true
end
