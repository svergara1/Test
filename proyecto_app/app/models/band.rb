# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Band < ApplicationRecord
	has_many :artists
	has_many :albums
end
