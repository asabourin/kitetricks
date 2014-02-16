class Rider < Sequel::Model

  one_to_many :riders_tricks
  many_to_many :tricks, :join_table => :riders_tricks

	plugin :timestamps
	plugin :association_dependencies, :tricks=>:nullify

end
