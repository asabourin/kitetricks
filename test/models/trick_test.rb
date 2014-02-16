require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Trick Model" do
  
  it 'can construct a new instance' do
    @trick = Trick.new
    refute_nil @trick
  end

  describe "#level_for_rider" do

    before do
      @trick = Trick.new(:name => 'Jump')
    end

    describe "when no rider passed" do

      it "should return 0" do
       assert_equal 0, @trick.level_for_rider(@rider)
      end

    end

  end

end
