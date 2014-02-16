Kitetricks::Api.controllers :tricks do
  
  get :index do
    @tricks = Trick.order(:position)
    render 'tricks/index'
  end

  get :categories do
    @categories = Category.all
    render 'tricks/categories'
  end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  

end
