Sequel.migration do
  up do
    create_table :tricks do
      primary_key :id
      foreign_key :category_id
      String :name
      Text :description
      Integer :position
    end
  end

  down do
    drop_table :tricks
  end
end
