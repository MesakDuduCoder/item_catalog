require_relative 'modules/book_module'
require_relative 'modules/game_module'
require_relative 'modules/music_module'
require_relative 'modules/genre_module'
require_relative 'modules/author_module'
require_relative 'modules/label_module'

class App
  attr_accessor :books, :games, :music, :genre, :author, :label

  def initialize()
    @books = []
    @games = []
    @songs = []
    @genres = []
    @authors = []
    @labels = []
  end

  include BookModule
  include GameModule
  include MusicModule
  include GenreModule
  include AuthorModule
  include LabelModule
end
