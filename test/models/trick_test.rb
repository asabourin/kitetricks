require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Trick Model" do

  before do 
    DatabaseCleaner.start
  end
  
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
       assert_equal 0, @trick.level_for_rider(nil)
      end

    end

    describe "when rider with such trick at level 1" do

      before do
        @rider = Rider.create(:username => 'Antoine')
        @trick.save
        RidersTrick.create(:rider => @rider, :trick => @trick, :level =>1)
      end

      it "should return 1" do
        puts "==="
        puts RidersTrick.first.inspect
       assert_equal 1, @trick.level_for_rider(@rider.id)
      end

    end

  end

  after do
    DatabaseCleaner.clean
  end

end
