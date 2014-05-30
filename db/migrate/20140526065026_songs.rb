class Songs < ActiveRecord::Migration
  def change
  end

  def self.up
	create_table :songs do |t|
		t.column :title, :string, :limit => 32, :null => false
		t.column :singer, :string, :limit => 32, :null => false
		t.column :year, :numeric
		t.column :album_id, :integer
		t.column :genre_id, :integer
		t.column :filename, :string, :limit => 50
	end


	
  end


  def self.down
	drop_table :songs
  end
end
