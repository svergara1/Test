# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :text
#  lastname   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer
#

class Artist < ApplicationRecord
	belongs_to :band
end
