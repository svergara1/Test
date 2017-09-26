# == Schema Information
#
# Table name: albums
#
#  id            :integer          not null, primary key
#  name          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  band_id       :integer
#  released_date :date
#

class Album < ApplicationRecord
	belongs_to :band
	has_many :songs
end
