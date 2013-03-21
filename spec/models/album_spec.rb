require 'spec_helper'

describe Album do
  let(:album) {Album.create(name: 'Cities')}

  describe '.create' do
    it 'creates an album' do
      album.should be_an_instance_of(Album)
      album.name.should eq 'Cities'
    end
  end

  describe '#photos' do
    it 'has photos' do
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      album.photos.count.should eq 1
    end
  end

end