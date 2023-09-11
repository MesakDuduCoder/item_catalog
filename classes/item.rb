require 'date'

class Item
    attr_accessor :id, :genre, :author, :label, :publish_date
    attr_reader :archived

    def initialize(publish_date, archived: false, id: Random.rand(1...1000))
        @id = id
        @publish_date = Date.parse(publish_date)
        @archived = archived
    end
end