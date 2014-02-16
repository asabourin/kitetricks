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

  after do
    DatabaseCleaner.clean
  end

end
