class Album

  @@album = []

  define_method(:initialize) do
  end

  define_singleton_method(:all) do
    @@album
  end
end

class Artist

  @@artist = []

  attr_reader(:members, :band)

  define_method(:initialize) do |attributes|
    @band = attributes.fetch(:key1) #get the value of the key called 'band'
    @members = attributes.fetch(:key2)
  end

  define_singleton_method(:all) do
    @@artist
  end

  define_method(:save) do
    @@artist.push(self)
  end

  define_singleton_method(:clear) do
    @@artist = []
  end

  define_singleton_method(:search_members) do |musician|
    found_band = nil
    @@artist.each() do |artist|
      if artist.members().include?(musician)
        found_band = artist.band()
      end
    end
    found_band
  end

end
