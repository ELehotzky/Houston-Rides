class User < ApplicationRecord

	has_secure_password

	has_many :bikes
	has_many :ratings
	has_many :sign_ups
	has_many :types
	has_many :types, through: :bikes 
	has_many :trails, through: :ratings
	has_many :trails, through: :types
	has_many :events, through: :sign_ups
	# has_many :events, through: :types

end
