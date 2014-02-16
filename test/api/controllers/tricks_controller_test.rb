require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "TricksController" do

  before do 

    app(Kitetricks::Api)
    DatabaseCleaner.start
    
    @category = Category.create(:name => 'Freestyle')
    @trick = Trick.create(:name => 'Jump', :description => 'Fly high', :category => @category)

  end

  describe "GET #index" do

    describe "when rider not logged in" do
    
      before do
        get '/tricks'
      end

      it "should return all tricks with level 0" do
        assert_equal @trick.name, JSON.parse(last_response.body)[0]['name']
        assert_equal 0, JSON.parse(last_response.body)[0]['level']
      end

    end

    describe "when rider logged in with tricks saved" do
    
      before do
        @rider = Rider.create(:username => 'antoine')
        RidersTrick.select.delete
        RidersTrick.create(:rider => @rider, :trick => @trick, :level => 1)
        get '/tricks', {:rider_id => @rider.id}
      end

      it "should return all tricks with level 0" do
        assert_equal @trick.name, JSON.parse(last_response.body)[0]['name']
        assert_equal 1, JSON.parse(last_response.body)[0]['level']
      end

    end

  end

  describe "GET #categories" do
    
    before do
      get '/tricks/categories'
    end

    it "should return all categories" do
      assert_equal @category.name, JSON.parse(last_response.body)[0]['name']
    end

  end

  describe "POST #level" do

    before do
      @rider = Rider.create(:username => 'antoine')
    end

    describe "when level not set yet" do

     before do
        @count = RidersTrick.count
        post "/tricks/#{@trick.id}/level", {:rider_id => @rider.id, :level =>1}
      end

      it "should create a riders_tricks with level" do
        assert_equal @count+1, RidersTrick.count
        assert_equal 1, RidersTrick.last.level
      end

    end

    describe "when level already set" do

     before do
        RidersTrick.create(:rider => @rider, :trick => @trick, :level => 1)
        @count = RidersTrick.count
        post "/tricks/#{@trick.id}/level", {:rider_id => @rider.id, :level =>2}
      end

      it "should update the riders_tricks with level" do
        assert_equal @count, RidersTrick.count
        assert_equal 2, RidersTrick.last.level
      end

    end

  end

  after do
    DatabaseCleaner.clean
  end

end
