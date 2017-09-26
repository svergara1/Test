class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.text :name
      t.text :lastname

      t.timestamps
    end
  end
end
