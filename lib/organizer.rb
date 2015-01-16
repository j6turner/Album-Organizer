class Album

  @@albums = []

  attr_reader(:title, :artist)

  define_method(:initialize) do |attributes|
    @title = attributes.fetch(:key_a)
    @artist = attributes.fetch(:key_b)
  end

  define_singleton_method(:all) do
    @@albums
  end

  define_method(:save) do
    @@albums.push(self)
  end

  define_singleton_method(:clear) do
    @@albums = []
  end

  define_singleton_method(:search_title) do |record|
    found_album = nil
    @@albums.each() do |album|
      if album.title() == record
        found_album = album
      end
    end
    found_album
  end


end



class Artist

  @@artists = []

  attr_reader(:members, :band)

  define_method(:initialize) do |attributes|
    @band = attributes.fetch(:key1) #get the value of the key called 'band'
    @members = attributes.fetch(:key2)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_singleton_method(:search_members) do |musician|
    found_band = nil
    @@artists.each() do |artist|
      if artist.members().include?(musician)
        found_band = artist.band()
      end
    end
    found_band
  end

end



# define_singleton_method(:search_members) do |musician|
#   found_band = nil
#   @@artists.each() do |artist|
    # if artist.members().include?(musician)
    # found_band = artist.band()
    # if artist.members().each() do |member|
    #   member.include?(musician)
    #   found_band = artist.band()
    # end
    # else
    #    found_band = "This artist is not found in this collection."
#   end
# end
# found_band
# end
