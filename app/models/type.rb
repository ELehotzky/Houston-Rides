class Type < ApplicationRecord

	has_many :bikes
	has_many :events
	has_many :trails

end
