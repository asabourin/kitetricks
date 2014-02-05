class Rider < Sequel::Model

	many_to_many :tricks

	plugin :timestamps
	plugin :association_dependencies, :tricks=>:nullify

end
