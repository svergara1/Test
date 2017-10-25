class AddReferences < ActiveRecord::Migration[5.0]
  def change
  	add_reference :artists, :band, index: true
  	add_reference :albums, :band, index: true
  	add_reference :songs, :album, index: true
  end
end
