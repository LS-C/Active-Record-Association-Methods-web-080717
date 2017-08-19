class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.songs.map { |genre| genre.artist }.uniq.length
  end

  def all_artist_names
    self.songs.map { |genre| genre.artist.name }.uniq
  end
end
