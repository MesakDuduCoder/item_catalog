require_relative '../classes/Game/author.rb'

module AuthorModule
  def list_authors
    if @authors.empty?
      puts 'There are no authors'
    else
      @authors.each_with_index do |author, i|
        puts "Number: #{i + 1}, First name: #{author.first_name}, Last name: #{author.last_name}"
      end
    end
  end
end