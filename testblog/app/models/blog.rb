class Blog < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, :use => :slugged

	has_attached_file :image
	validates_presence_of :title, :description
end
