class AddValuesTocOncert < ActiveRecord::Migration[5.0]
  def change
  	add_column :concerts, :name, :string
  	add_column :concerts, :year, :date
  end
end
