class AddReferenceToUser < ActiveRecord::Migration[5.0]
  def change
  	add_reference :users, :playlist, index: true
  	add_reference :users, :song, index: true
  end
end
