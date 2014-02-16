class Trick < Sequel::Model

  many_to_many :riders
  
  many_to_one :category

  plugin :association_dependencies, :riders=>:nullify

  def level_for_rider(rider_id=nil)
    if join = RidersTrick.first(:rider_id => rider_id, :trick_id => self.id)
      join.level
    else
      0
    end
  end

end
