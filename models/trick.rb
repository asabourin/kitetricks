class Trick < Sequel::Model

	many_to_many :riders
	many_to_one :category

	plugin :association_dependencies, :riders=>:nullify

end
