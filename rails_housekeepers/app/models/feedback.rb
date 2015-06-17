class Feedback < ActiveRecord::Base

	belongs_to :reviewable, polymorphic: true

end
