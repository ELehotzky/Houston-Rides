class Trail < ApplicationRecord

	belongs_to :type
	has_many :users, through: :rating
	has_many :users, through: :type

end
