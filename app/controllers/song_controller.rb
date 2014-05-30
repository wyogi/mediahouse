class SongController < ApplicationController
	
	layout 'standard'

   def index
   end

   def list

	@songs = Song.find.all
   end

   def show
	@song = Song.find(params[:id])
#	@album = Album.find(@song.album_id)
	@genre = Genre.find(@song.genre_id)
   end
   def new
	@song = Song.new()
   end
   def create
	@song = Song.new(song_params)

	if @song.save
		redirect_to :action => 'list'
	else
#		@album = Album.all
		@genre = Genre.all
		render :action => 'new'
	end
   end

   def search
	@result = Song.search(params[:search])
   end	
   def edit
   end
   def update
   end
   def delete
   end

   def song_params
	params_require(:song).(permit(:title, :singer, :year, :album, :genre_id, :filename))
   end
end
