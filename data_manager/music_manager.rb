require 'json'
require_relative '../classes/Music/music_album.rb'

class MusicManager
    DATA_FOLDER = 'JSON/'

    def load_music_album
        return [] unless File.exist?("#{DATA_FOLDER}music_album.json")
    
        data = JSON.parse(File.read("#{DATA_FOLDER}music_album.json"))
        music_albums = []
        data['MusicAlbums'].map { |music_album_data| music_albums << MusicAlbum.new(music_album_data['publish_date'], music_album_data['on_spotify']) }
        music_albums
    end
end
