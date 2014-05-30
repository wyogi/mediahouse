class Albums < ActiveRecord::Migration
  def change
  end
 
  def self.up
	create_table :albums do |t|
		t.column :name, :string
	end
  end

  def self.down
	drop_table :albums
  end	
end
