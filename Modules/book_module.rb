require_relative '../classes/Book/book.rb'

module BookModule
  def create_book(publisher, cover_state, publish_date)
    book = Book.new(publisher, cover_state, publish_date)
    @books << book
    save_book_to_file(@books)
  end
  
  def list_books
    if @books.empty?
      puts 'There are no books'
    else
      @books.each_with_index do |book, i|
        puts "Number: #{i + 1}) Publisher: #{book.publisher}, Cover state: is in #{book.cover_state} shape, Published in: year #{book.publish_date}"
      end
    end
  end

  
  def save_book_to_file(books)
    @book_data.save_books(books)
  end
end