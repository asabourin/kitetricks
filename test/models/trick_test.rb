require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Trick Model" do
  it 'can construct a new instance' do
    @trick = Trick.new
    refute_nil @trick
  end
end
