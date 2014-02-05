require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Category Model" do
  it 'can construct a new instance' do
    @category = Category.new
    refute_nil @category
  end
end
