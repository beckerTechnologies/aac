class Vehicle < ActiveRecord::Base
  has_many :inspections
end
