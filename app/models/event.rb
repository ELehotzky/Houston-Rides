class Event < ApplicationRecord

	belongs_to :type
	has_many :sign_ups
	has_many :users, through: :sign_ups
	has_many :users, through: :types

end
