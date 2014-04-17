class Vehicle < ActiveRecord::Base
	belongs_to :dealer
	belongs_to :user
	has_many :media

end
