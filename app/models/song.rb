class Song < ActiveRecord::Base
  has_many :playlists
  has_many :mixtapes, :through => :playlists
  belongs_to :artist
  
  def artist_name
    #this will grab the artist name from the database (display) Get 
    self.artist.name if artist 
  end
  
  def artist_name=(string)
    #take the artist name and set @song.artist to whatever that says
    self.artist = Artist.find_or_create_by_name(string)
  end
  
end
