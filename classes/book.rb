require_relative '../item'
require 'date'

class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date

    def initialize(publisher, cover_state, publish_date)
        super(publish_date)
        @publisher = publisher
        @cover_state = cover_state
    end
    
    def can_be_archived?
        if super == false || @cover_state == "bad"
            true
        else
            false
        end
    end
end
