class Genre

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |info| info.genre == self }
    end

    def artists
        result = []
        songs.select { |info| result << info.artist }
        result
    end

    def self.all
        @@all
    end
end