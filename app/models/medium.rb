class Medium < ActiveRecord::Base
belongs_to :response
validates_presence_of :data
validates_presence_of :filename
validates_presence_of :type
#validates_presence_of :label
#validates_presence_of :description
end
