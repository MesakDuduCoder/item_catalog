require_relative 'modules/book_module'
require_relative 'modules/game_module'
require_relative 'modules/music_module'
require_relative 'modules/genre_module'
require_relative 'modules/author_module'
require_relative 'modules/label_module'
require_relative 'data_manager/music_manager'

class App
  attr_accessor :books, :games, :music, :genre, :author, :label

  def initialize()
    @books = []
    @games = []
    @songs = []
    @genres = []
    @authors = []
    @labels = []
    @music_album_data = MusicManager.new
    @game_data = GameManager.new
    @author_data = AuthorManager.new
    load_data
  end

  include BookModule
  include GameModule
  include MusicModule
  include GenreModule
  include AuthorModule
  include LabelModule

  def load_data
    @songs = @music_album_data.load_music_album
    @games = @game_data.load_game
    @authors =
  end
end
