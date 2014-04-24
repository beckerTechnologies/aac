class Response < ActiveRecord::Base
belongs_to :inspection
belongs_to :section 
has_many :media
accepts_nested_attributes_for :media
end
