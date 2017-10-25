class AddColumnToAlbum < ActiveRecord::Migration[5.0]
  def change
  	add_column :albums, :released_date, :date
  end
end
