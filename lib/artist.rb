class Artist

    attr_reader :name

    @@all = []
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select { |songs| songs.artist == self }
    end

    def genres
        result = []
        songs.select { |info| 
            result << info.genre
        }
        result
    end

    def self.all
        @@all
    end
end