class Inspection < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle
  belongs_to :dealer
  has_many :responses
  validates_presence_of :dealer_id
  validates_presence_of :user_id
  validates_presence_of :vehicle_id
end
