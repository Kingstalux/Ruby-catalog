require_relative './spec_helper'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('01-01-1900')
  end

  context 'create a music album instance' do
    it 'takes one to three parameters and returns a MusicAlbum object' do
      expect(@music_album).to be_an_instance_of MusicAlbum
    end

    describe 'can archive method' do
      it 'should over ride method from parent class' do
        expect(@music_album.can_be_archived?).to eql false
      end
    end
  end
end
