require_relative '../classes/item'
require_relative '../classes/Book/label'

describe Book do
  before :each do
    @label = Label.new('title', 'color')
  end

  context "test add item method" do
    it 'should return an array of item' do
      item = Item.new("2002/01/01", archived: true)
      @label.add_item(item)
      expect(@label.items).to eq([item])
    end
  end
end
