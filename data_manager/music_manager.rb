require 'json'
require_relative '../classes/Music/music_album'

class MusicManager
  DATA_FOLDER = 'JSON/'.freeze

  def load_music_album
    return [] unless File.exist?("#{DATA_FOLDER}music_album.json")

    data = JSON.parse(File.read("#{DATA_FOLDER}music_album.json"))
    music_albums = []
    data['MusicAlbums'].map do |music_album_data|
      music_albums << MusicAlbum.new(music_album_data['publish_date'], music_album_data['on_spotify'])
    end
    music_albums
  end

  def save_music_album(songs)
    File.open("#{DATA_FOLDER}music_album.json", 'w') do |file|
      data = {
        'MusicAlbums' => songs.map do |song|
                           {
                             'publish_date' => song.publish_date,
                             'on_spotify' => song.on_spotify,
                             'id' => song.id
                           }
                         end
      }
      file.write(JSON.pretty_generate(data))
    end
  end
end
