class Type < ApplicationRecord

	has_many :bikes, :events, :trails

end
