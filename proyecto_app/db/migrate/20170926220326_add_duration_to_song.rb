class AddDurationToSong < ActiveRecord::Migration[5.0]
  def change
  	add_column :songs, :duration, :integer
  	add_column :songs, :released_date, :date
  end
end
