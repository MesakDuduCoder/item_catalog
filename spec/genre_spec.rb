require_relative '../classes/Music/genre.rb'
require_relative '../classes/item.rb'


describe Genre do
    before :each do
      @genre = Genre.new('Rock')
    end
  
    context "test add item method" do
      it 'should return an array of item' do
        item = Item.new("2007/03/01", archived: true)
        @genre.add_item(item)
        expect(@genre.items).to eq([item])
      end
    end
  end