require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Rider Model" do
  it 'can construct a new instance' do
    @rider = Rider.new
    refute_nil @rider
  end
end
