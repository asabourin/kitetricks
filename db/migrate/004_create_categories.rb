Sequel.migration do
  up do
    create_table :categories do
      primary_key :id
      String :name
      Text :description
    end
  end

  down do
    drop_table :categories
  end
end
