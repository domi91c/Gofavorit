class Offer < ActiveRecord::Base



	belongs_to :user
	has_one :location

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

end
