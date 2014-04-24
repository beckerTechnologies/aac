class Response < ActiveRecord::Base
belongs_to :inspection
belongs_to :section 
has_many :media
accepts_nested_attributes_for :media
validates_presence_of :inspection_id

validates_presence_of :section_id 
validates_presence_of :check, :if => :should_validate_check?
validates_presence_of :details, :if => :should_validate_details?
validates_presence_of :auxilary_details, :if => :should_validate_auxilary_details?
attr_accessor :set_check
def should_validate_check?
  set_check
end
attr_accessor :set_details
def should_validate_details?
  set_details  
end
attr_accessor :set_auxdetails
def should_validate_auxilary_details?
  set_auxdetails 
end

end
