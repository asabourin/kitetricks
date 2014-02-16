class RidersTrick < Sequel::Model

  many_to_one :trick
  many_to_one :rider

end