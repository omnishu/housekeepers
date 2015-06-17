class Worker < ActiveRecord::Base

	has_many :contacts, as: :contactable
	has_many :feedbacks, as: :reviewable

end
