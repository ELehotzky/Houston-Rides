class Event < ApplicationRecord

	belongs_to :type
	has_many :users, through: :sign_up
	has_many :users, through: :type

end
