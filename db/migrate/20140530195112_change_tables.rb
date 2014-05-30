class ChangeTables < ActiveRecord::Migration
  def change
	rename_column :songs, :album_id, :album
	change_column :songs, :album, :string
	drop_table :albums
  end
end
