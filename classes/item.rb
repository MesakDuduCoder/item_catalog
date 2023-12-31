require 'date'

class Item
  attr_accessor :id, :publish_date
  attr_reader :archived, :genre, :author, :label

  def initialize(publish_date, archived: false, id: Random.rand(1...1000))
    @id = id
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?()
    difference = Time.now.year - @publish_date.year.to_i
    difference > 10
  end
end
