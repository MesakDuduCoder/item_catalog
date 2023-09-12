require_relative '../classes/Book/book'

describe Book do
  describe '#can_be_archived?' do
    context 'Return Boolean based on age or cover condition' do
      it 'when the book is old enough or cover state is bad returns true' do
        book = Book.new('publisher', 'bad', "2002/01/01")
        expect(book.can_be_archived?).to eq(true)
      end

      it 'when the book is old enough but cover state is good returns false' do
        book = Book.new('publisher', 'good', "2002/01/01")
        expect(book.can_be_archived?).to eq(false)
      end

      it 'when the book is new but cover state is bad returns true' do
        book = Book.new('publisher', 'bad', "2022/01/01")
        expect(book.can_be_archived?).to eq(true)
      end
    end
  end
end