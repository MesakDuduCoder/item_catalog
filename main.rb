require_relative 'app'

module Main
  def self.add_game(app)
    puts "\n"
    puts 'Is game multiplayes [Yes/No]:'
    multiplayer = gets.chomp
    puts 'When is game last played [Enter date format year/month/date]:'
    last_played_at = gets.chomp
    puts 'When is game published [Enter date format year/month/date]:'
    publish_date = gets.chomp
    app.create_game(multiplayer, last_played_at, publish_date)
  end

  def self.add_book(app)
    puts "\n"
    puts 'Who is the publisher [Enter Publisher Name]:'
    publisher = gets.chomp
    puts 'What Is the cover\'s state like? [Enter good or bad]:'
    cover_state = gets.chomp
    puts 'When was the book published [Enter date format year/month/date]:'
    publish_date = gets.chomp
    app.create_book(publisher, cover_state, publish_date)
  end

  def self.list_options
    puts "\n"
    puts 'Enter number to pick an option:'
    puts '1. List all books'
    puts '2. List all games'
    puts '3. List all music albums'
    puts '4. List all genres'
    puts '5. List all authors'
    puts '6. List all labels'
    puts '7. Add a book'
    puts '8. Add a game'
    puts '9. Add a music album'
    puts '10. End'
  end

  def self.main
    app = App.new
    loop do
      list_options
      option = gets.chomp.to_i
      options = {
        1 => -> { app.list_books }, 2 => -> { app.list_games }, 3 => -> { app.list_musicalbums },
        4 => -> { app.list_genres },
        5 => -> { app.list_authors },
        6 => -> { app.list_labels },
        7 => -> { add_book(app) },
        8 => -> { add_game(app) },
        9 => -> { add_mucicalbum(app) },
        10 => -> { exit }
      }
      case option
      when 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
        options[option].call
      end
    end
  end
end

Main.main
