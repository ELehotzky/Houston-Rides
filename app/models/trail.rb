class Trail < ApplicationRecord

	belongs_to :type
	has_many :ratings
	has_many :users, through: :ratings
	has_many :users, through: :types

end
