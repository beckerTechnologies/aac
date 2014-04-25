class Medium < ActiveRecord::Base
belongs_to :response
validates_presence_of :filedata
validates_presence_of :filename
validates_presence_of :filetype
#validates_presence_of :label
#validates_presence_of :description
end
