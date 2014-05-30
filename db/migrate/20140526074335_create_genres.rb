class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
	 t.column :name, :string
                t.column :category, :string
      t.timestamps
    end
	Genre.create :name => "Christian", :category => "Contemporary"
        Genre.create :name => "Christian", :category => "Worhship"
        Genre.create :name => "Christian", :category => "Country"
        Genre.create :name => "Christian", :category => "Rock"
        Genre.create :name => "R&B", :category => "Soul"

  end
end
