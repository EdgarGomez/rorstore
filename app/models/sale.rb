class Sale < ActiveRecord::Base
	before_create :populate_guid_string
	belongs_to :book

	private
		def populate_guid_string
			self.guid_string = SecureRandom.uuid()
		end
end
