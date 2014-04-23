class Inspection < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle
  belongs_to :dealer
  has_many :responses
end
