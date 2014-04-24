class Vehicle < ActiveRecord::Base
  has_many :inspections

  validates_presence_of :year
  validates :year, 
    inclusion: { in: 1900..Date.today.year, message: "Invalid (valid examples: 1999, 2014)" }
  validates_presence_of :make 
  validates_presence_of :model
  validates_presence_of :stock_number
  validates_presence_of :vin
  VALID_VIN_REGEX = /\A[0-9a-zA-Z]{17}\z/
    validates :vin, 
    format: { 
    with: VALID_VIN_REGEX ,
    message: "should be a 17-character long"
  }

  validates_presence_of :exterior_color
  validates_presence_of :interior_color

end
