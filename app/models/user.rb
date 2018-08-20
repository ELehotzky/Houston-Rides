class User < ApplicationRecord

	has_many :bikes
	has_many :types, through: :bike 
	has_many :trails, through: :rating
	has_many :trails, through: :type
	has_many :events, through: :sign_up
	has_many :events, through: :type

end
