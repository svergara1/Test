class AddPlaylistsAssociationToUser < ActiveRecord::Migration[5.0]
  def self.up
  	add_index 'playlists', ['user_id'], :name => 'index_user_id'
  end
end
