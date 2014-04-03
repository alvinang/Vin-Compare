# == Schema Information
#
# Table name: vins
#
#  id         :integer          not null, primary key
#  vin_number :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Vin < ActiveRecord::Base
  validates :vin_number, presence: true

  def check_vin
    CheckVin::VinValidator.check_num?(self.vin_number)
  end
end
