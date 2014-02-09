require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "TricksController" do

  before do 

    DatabaseCleaner.start
    @category = Category.create(:name => 'Freestyle')
    @trick = Trick.create(:name => 'Jump', :description => 'Fly high', :category => @category)

  end

  describe "GET #index" do

    describe "when user not logged in" do
    
      before do
        get '/tricks'
      end

      it "should return all tricks" do
        assert_equal "Jump", JSON.parse(last_response.body)[0]['name']
      end

    end

  end

  after do
    DatabaseCleaner.clean
  end

end
