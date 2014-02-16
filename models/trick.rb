class Trick < Sequel::Model

  many_to_many :riders
  many_to_one :category

  plugin :association_dependencies, :riders=>:nullify

  def level_for_rider(rider=nil)
    0
  end

end
