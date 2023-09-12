require_relative '../classes/Music/music_album'


describe MusicAlbum do
  describe '#can_be_archived?' do
    context 'Return Boolean based on difference between published date and listed in spotify' do
      it 'when the album is old enough and present in spotify it will return true' do
        music_album = MusicAlbum.new('2001/02/21', true)
        expect(music_album.can_be_archived?).to eq(true)
      end

      it 'when the album is not old enough and listed in spotify it will return false' do
        music_album = MusicAlbum.new('2020/05/23', true)
        expect(music_album.can_be_archived?).to eq(false)
      end

      it 'when the album is old enough and not listed in spotify it will return false' do
        music_album = MusicAlbum.new('2000/07/18', false)
        expect(music_album.can_be_archived?).to eq(false)
      end

      it 'when the album is not old enough and not listed in spotify it will return false' do
        music_album = MusicAlbum.new('2022/06/05', false)
        expect(music_album.can_be_archived?).to eq(false)
      end
    end
  end
end
