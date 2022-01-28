require_relative './spec_helper'

describe Genre do
  before :each do
    @genre = Genre.new('Rock')
  end

  context 'create a Genre instance' do
    it 'takes one parameter and returns a Genre object' do
      expect(@genre).to be_an_instance_of Genre
    end

    describe 'add item method' do
      it 'should take an instance of item as input and add it to the collection of items' do
        @music = MusicAlbum.new('01-01-1900')
        @genre.add_item(@music)
        expect(@genre.items).to eql [@music]
      end
    end
  end
end
