class Band < ApplicationRecord
	has_many :artists
	has_many :albums
end
