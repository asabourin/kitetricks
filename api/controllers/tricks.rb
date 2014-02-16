Kitetricks::Api.controllers :tricks do
  
  get :index do
    @rider_id = params[:rider_id]
    @tricks = Trick.order(:position)
    render 'tricks/index'
  end

  get :categories do
    @categories = Category.all
    render 'tricks/categories'
  end

  post :level, :map => "/tricks/:id/level" do
    
    @trick = Trick[params[:id].to_i]
    @rider = Rider[params[:rider_id].to_i]
    @level = params[:level].to_i
    
    if @trick && @rider && @level

      if join = RidersTrick.first(:rider => @rider, :trick => @trick)
        join.update(:level => @level)
      else
        RidersTrick.create(:rider => @rider, :trick => @trick, :level => @level)
      end
      
      @trick.reload
      @rider_id = @rider.id
      render 'tricks/show'
      
    end

  end

end
