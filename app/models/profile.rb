class Profile < ActiveRecord::Base
	belongs_to :user

	

	def age
		if self.date_of_birth
			dob = self.date_of_birth
	    now = Time.now.utc.to_date
	    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  	end
  end
end
