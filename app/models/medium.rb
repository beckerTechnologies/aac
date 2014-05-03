class Medium < ActiveRecord::Base

#  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

belongs_to :response
#validates_presence_of :label
#validates_presence_of :description
end
