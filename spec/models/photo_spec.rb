require 'spec_helper'

describe Photo do
  let(:photo) {Photo.create(name: 'NYC', url: 'nyc.jpg')}

  describe '.create' do
    it 'creates a photo' do
      photo.should be_an_instance_of(Photo)
      photo.name.should eq 'NYC'
      photo.url.should eq 'nyc.jpg'
    end
  end

  describe '#album' do
    it 'has an album' do
      album = FactoryGirl.create(:album)
      photo.album = album
      photo.album.should eq album
    end
  end

end