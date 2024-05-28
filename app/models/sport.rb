class Sport < ApplicationRecord
	has_many :booking_details

  def self.search(search)
  	if search
  		sport_name = Sport.find_by(name: search)
  		sport_pin = Sport.find_by(pincode: search)
  		if sport_name
  			self.where(name: search)
  			#self.where("name LIKE ? OR pincode LIKE ?", "%#{search}%", "%#{search}%")
            #where("name like CONCAT('%',?,'%') OR pincode like CONCAT('%',?,'%')", search, search)

  		elsif sport_pin
  			self.where(pincode: search)
  		else 
  			Sport.all
  		end
  	else 
  		Sport.all
  	end
  end


end
