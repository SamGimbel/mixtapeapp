require 'spec_helper'

describe Mixtape do
  before(:each) do
    @mixtape = Mixtape.new(:name => "My Favorite Playlist")
  end
  
  it 'is persisted to the database on save' do
    @mixtape.save
    @mixtape.should be_persisted
  end
  
  it "is valid with valid attributes" do
    @mixtape.should be_valid
  end
  
  it "is not valid without a name" do
    @mixtape.name = nil
    @mixtape.should_not be_valid
  end
  
end