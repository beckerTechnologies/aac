class Dealer < ActiveRecord::Base
	has_many :inspections
  validates_presence_of :name
  validates_presence_of :license_number
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
end
