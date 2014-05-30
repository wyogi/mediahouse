class Song < ActiveRecord::Base

	searchkick

	belongs_to :album	
	validates_presence_of :title, :singer
	validates_numericality_of :year, :message=>"Invalid year"

	#Song.reindex

   def self.search(search)
	if search
		find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
	else
		find(:all)
	end
   end		
end

